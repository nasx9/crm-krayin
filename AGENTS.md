# Repository Guidelines

## Project Structure and Module Organization
- `src/` is the Laravel application root.
- Core app code lives in `src/app/`, routes in `src/routes/`, config in `src/config/`, and database assets in `src/database/`.
- Frontend source files are in `src/resources/` (JS, CSS, Blade). Built assets land in `src/public/` (treat `src/public/build` and `src/public/vendor` as generated output).
- Domain modules are organized under `src/packages/Webkul/<Module>/src` with their own Models, Providers, Resources, and Routes.
- Docker assets are in the repo root (`Dockerfile`, `Dockerfile.dev`, `docker-compose*.yml`). Additional container scripts may live in `src/docker/` if present.

## Local Development Standard (Gold Setup)
This repository uses Docker for local development and always runs the full stack:
- Web (Apache + PHP)
- MySQL
- Redis
- Queue worker
- Scheduler

We do not rely on the UI installer to generate environment files. Local environment is driven by `src/.env`.

### Requirements
- Docker and Docker Compose v2
- Node.js LTS (for Vite builds, if needed)
- npm

### First Run (Local)
Run all commands from the repository root unless noted.

1) Copy environment file:
- `cp src/.env.example src/.env`

2) Edit `src/.env` for local values (minimum):
- `APP_ENV=local`
- `APP_DEBUG=true`
- `APP_URL=http://localhost:8080`
- `ASSET_URL=http://localhost:8080`
- `APP_CIPHER=aes-256-cbc`
- `DB_HOST=mysql`
- `DB_DATABASE=krayin`
- `DB_USERNAME=krayin`
- `DB_PASSWORD=krayin`
- `REDIS_HOST=redis`
- `QUEUE_CONNECTION=redis`
- `SESSION_DRIVER=redis`
- `CACHE_DRIVER=redis`
- `VIEW_COMPILED_PATH=/var/www/html/storage/framework/views`
- `DEBUGBAR_ENABLED=false`

3) Start the full stack:
- `docker compose -f docker-compose.local.yml up -d --build`

4) Ensure Laravel writable paths exist and have correct permissions:
- `docker compose -f docker-compose.local.yml exec -u root krayin sh -lc "mkdir -p storage/framework/cache storage/framework/sessions storage/framework/views bootstrap/cache && chown -R www-data:www-data storage bootstrap/cache && chmod -R 775 storage bootstrap/cache"`

5) Install PHP dependencies:
- `docker compose -f docker-compose.local.yml exec krayin composer install`

6) Generate app key (writes into `src/.env`):
- `docker compose -f docker-compose.local.yml exec krayin php artisan key:generate`

7) Install Krayin CRM (preferred, deterministic):
- `docker compose -f docker-compose.local.yml exec krayin php artisan krayin-crm:install`

8) Open the app:
- `http://localhost:8080`

### Daily Workflow
- Start:
  - `docker compose -f docker-compose.local.yml up -d`
- Stop:
  - `docker compose -f docker-compose.local.yml down`
- Logs:
  - `docker compose -f docker-compose.local.yml logs -f --tail=200`

### Frontend Assets
From `src/`:
- `npm install`
- Dev:
  - `npm run dev`
- Build:
  - `npm run build`

If the UI shows errors like "jQuery is not defined" or "Unexpected token '<' in JS", assets are likely not built or public assets not published.

### Clearing Caches
- `docker compose -f docker-compose.local.yml exec krayin php artisan optimize:clear`

### Testing
Tests are in `src/tests/Unit` and `src/tests/Feature`.
- Run:
  - `docker compose -f docker-compose.local.yml exec krayin php artisan test`
- Pest (if present):
  - `docker compose -f docker-compose.local.yml exec krayin ./vendor/bin/pest`

### Coding Style
- PHP formatting uses Laravel Pint (`src/pint.json`):
  - `docker compose -f docker-compose.local.yml exec krayin ./vendor/bin/pint`

Follow PSR-12 and Laravel conventions:
- 4-space indentation
- `StudlyCase` class names
- `camelCase` methods
- timestamped migrations like `YYYY_MM_DD_HHMMSS_create_*_table.php`

## Troubleshooting (Known Failure Modes)
### "Please provide a valid cache path"
Cause: missing `storage/framework/views` or permission issues.
Fix:
- `docker compose -f docker-compose.local.yml exec -u root krayin sh -lc "mkdir -p storage/framework/views bootstrap/cache && chown -R www-data:www-data storage bootstrap/cache && chmod -R 775 storage bootstrap/cache"`

### "Unsupported cipher or incorrect key length"
Cause: missing or invalid `APP_CIPHER` or `APP_KEY`.
Fix:
- Ensure `APP_CIPHER=aes-256-cbc` in `src/.env`
- Run: `docker compose -f docker-compose.local.yml exec krayin php artisan key:generate`
- Clear caches: `docker compose -f docker-compose.local.yml exec krayin php artisan optimize:clear`

### Installer API 500 for env setup
Cause: installer attempts to write `.env` but file is missing or not writable.
Fix: do not use UI installer for env. Use `src/.env` and `php artisan krayin-crm:install`.

### Debugbar JS errors
Cause: debugbar assets being returned as HTML due to redirects or middleware.
Fix:
- Set `DEBUGBAR_ENABLED=false` in `src/.env`

## Commit and Pull Request Guidelines
- Keep commits short, descriptive, and focused.
- PRs should include summary, testing notes, and screenshots or GIFs for UI changes.

## Security and Configuration Tips
- Do not commit secrets.
- Keep production credentials out of the repo.
- Use environment variables or secret managers in production.
