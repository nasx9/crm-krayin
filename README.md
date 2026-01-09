# Krayin CRM (Webkul) - Development and Deployment Guide

This repository contains a Krayin CRM installation customized for development and production deployment. The local development standard is Docker with a full stack always running.

## Stack
- Laravel (Krayin CRM)
- Apache + PHP
- MySQL
- Redis
- Queue worker
- Scheduler
- Vite (frontend assets)

## Repository Layout
- `src/` Laravel application root
- `src/app/` core app
- `src/routes/` routes
- `src/config/` config
- `src/database/` migrations and seeders
- `src/resources/` frontend source (JS, CSS, Blade)
- `src/public/` built assets and public files
- `src/packages/Webkul/` domain modules
- Root Docker assets:
  - `Dockerfile`, `Dockerfile.dev`
  - `docker-compose.yml`, `docker-compose.local.yml`

## Local Development (Docker, Full Stack)
### Requirements
- Docker and Docker Compose v2
- Node.js LTS + npm (for assets)

### First Run
From repository root:

1) Create local environment file:
- `cp src/.env.example src/.env`

2) Update `src/.env` for local:
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

3) Start the stack:
- `docker compose -f docker-compose.local.yml up -d --build`

4) Fix permissions and create required directories:
- `docker compose -f docker-compose.local.yml exec -u root krayin sh -lc "mkdir -p storage/framework/cache storage/framework/sessions storage/framework/views bootstrap/cache && chown -R www-data:www-data storage bootstrap/cache && chmod -R 775 storage bootstrap/cache"`

5) Install PHP dependencies:
- `docker compose -f docker-compose.local.yml exec krayin composer install`

6) Generate app key:
- `docker compose -f docker-compose.local.yml exec krayin php artisan key:generate`

7) Install Krayin CRM (recommended):
- `docker compose -f docker-compose.local.yml exec krayin php artisan krayin-crm:install`

8) Access:
- `http://localhost:8080`

### Common Commands
- Start:
  - `docker compose -f docker-compose.local.yml up -d`
- Stop:
  - `docker compose -f docker-compose.local.yml down`
- Tail logs:
  - `docker compose -f docker-compose.local.yml logs -f --tail=200`
- Clear caches:
  - `docker compose -f docker-compose.local.yml exec krayin php artisan optimize:clear`

## Frontend Assets
From `src/`:
- `npm install`
- Dev:
  - `npm run dev`
- Build:
  - `npm run build`

If the UI breaks with JS errors or missing libraries, build assets and verify `APP_URL` and `ASSET_URL`.

## Tests
- Run all tests:
  - `docker compose -f docker-compose.local.yml exec krayin php artisan test`
- Pest (if configured):
  - `docker compose -f docker-compose.local.yml exec krayin ./vendor/bin/pest`

## Production Deployment (Coolify)
Recommended safe flow:
1) Backup database.
2) Deploy new commit through Coolify (build and redeploy).
3) Run migrations:
- `php artisan migrate --force`
4) Clear caches if needed:
- `php artisan optimize:clear`

Do not remove database constraints. Treat schema changes as versioned migrations.

## Troubleshooting
### Please provide a valid cache path
Fix:
- `docker compose -f docker-compose.local.yml exec -u root krayin sh -lc "mkdir -p storage/framework/views bootstrap/cache && chown -R www-data:www-data storage bootstrap/cache && chmod -R 775 storage bootstrap/cache"`

### Unsupported cipher or incorrect key length
Fix:
- Ensure `APP_CIPHER=aes-256-cbc`
- Re-generate key:
  - `docker compose -f docker-compose.local.yml exec krayin php artisan key:generate`
- Clear caches:
  - `docker compose -f docker-compose.local.yml exec krayin php artisan optimize:clear`

### Installer env setup fails
Do not rely on UI installer to create `.env`. Use `src/.env` and install via CLI.

## Contribution Notes
- Keep patches small and focused.
- Add a test for any bug fix.
- For UI changes, include screenshots or GIFs in PR notes.
