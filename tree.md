.
├── AGENTS.md
├── bin
│   ├── art
│   ├── down
│   ├── format
│   ├── health
│   ├── init
│   ├── logs
│   ├── npm
│   ├── perms
│   ├── shell
│   ├── test
│   └── up
├── docker-compose.local.yml
├── docker-compose.yml
├── Dockerfile
├── Dockerfile.dev
├── README.md
├── src
│   ├── app
│   │   ├── Console
│   │   │   └── Kernel.php
│   │   ├── Exceptions
│   │   │   └── Handler.php
│   │   ├── Http
│   │   │   ├── Controllers
│   │   │   │   └── Controller.php
│   │   │   ├── Kernel.php
│   │   │   └── Middleware
│   │   │       ├── Authenticate.php
│   │   │       ├── EncryptCookies.php
│   │   │       ├── PreventRequestsDuringMaintenance.php
│   │   │       ├── RedirectIfAuthenticated.php
│   │   │       ├── TrimStrings.php
│   │   │       ├── TrustHosts.php
│   │   │       ├── TrustProxies.php
│   │   │       └── VerifyCsrfToken.php
│   │   ├── Models
│   │   │   └── User.php
│   │   └── Providers
│   │       ├── AppServiceProvider.php
│   │       ├── AuthServiceProvider.php
│   │       ├── BroadcastServiceProvider.php
│   │       ├── EventServiceProvider.php
│   │       └── RouteServiceProvider.php
│   ├── artisan
│   ├── bootstrap
│   │   ├── app.php
│   │   └── cache
│   │       ├── packages.php
│   │       └── services.php
│   ├── CHANGELOG.md
│   ├── CODE_OF_CONDUCT.md
│   ├── composer.json
│   ├── composer.lock
│   ├── config
│   │   ├── app.php
│   │   ├── auth.php
│   │   ├── breadcrumbs.php
│   │   ├── broadcasting.php
│   │   ├── cache.php
│   │   ├── concord.php
│   │   ├── cors.php
│   │   ├── database.php
│   │   ├── debugbar.php
│   │   ├── dompdf.php
│   │   ├── excel.php
│   │   ├── filesystems.php
│   │   ├── flare.php
│   │   ├── hashing.php
│   │   ├── ignition.php
│   │   ├── imap.php
│   │   ├── krayin-vite.php
│   │   ├── logging.php
│   │   ├── mail.php
│   │   ├── mail-receiver.php
│   │   ├── queue.php
│   │   ├── repository.php
│   │   ├── sanctum.php
│   │   ├── services.php
│   │   ├── session.php
│   │   ├── tinker.php
│   │   └── view.php
│   ├── database
│   │   ├── factories
│   │   │   └── UserFactory.php
│   │   ├── migrations
│   │   │   ├── 2019_08_19_000000_create_failed_jobs_table.php
│   │   │   ├── 2019_12_14_000001_create_personal_access_tokens_table.php
│   │   │   ├── 2024_09_09_094040_create_job_batches_table.php
│   │   │   └── 2024_09_09_094042_create_jobs_table.php
│   │   └── seeders
│   │       └── DatabaseSeeder.php
│   ├── docker
│   │   ├── 8.0
│   │   │   ├── Dockerfile
│   │   │   ├── php.ini
│   │   │   ├── start-container
│   │   │   └── supervisord.conf
│   │   ├── 8.1
│   │   │   ├── Dockerfile
│   │   │   ├── php.ini
│   │   │   ├── start-container
│   │   │   └── supervisord.conf
│   │   ├── 8.2
│   │   │   ├── Dockerfile
│   │   │   ├── php.ini
│   │   │   ├── start-container
│   │   │   └── supervisord.conf
│   │   ├── 8.3
│   │   │   ├── Dockerfile
│   │   │   ├── php.ini
│   │   │   ├── start-container
│   │   │   └── supervisord.conf
│   │   ├── 8.4
│   │   │   ├── Dockerfile
│   │   │   ├── php.ini
│   │   │   ├── start-container
│   │   │   └── supervisord.conf
│   │   ├── mariadb
│   │   │   └── create-testing-database.sh
│   │   ├── mysql
│   │   │   └── create-testing-database.sh
│   │   └── pgsql
│   │       └── create-testing-database.sql
│   ├── lang
│   │   └── en
│   │       ├── auth.php
│   │       ├── pagination.php
│   │       ├── passwords.php
│   │       └── validation.php
│   ├── LICENSE
│   ├── node_modules
│   │   ├── asynckit
│   │   │   ├── bench.js
│   │   │   ├── index.js
│   │   │   ├── lib
│   │   │   │   ├── abort.js
│   │   │   │   ├── async.js
│   │   │   │   ├── defer.js
│   │   │   │   ├── iterate.js
│   │   │   │   ├── readable_asynckit.js
│   │   │   │   ├── readable_parallel.js
│   │   │   │   ├── readable_serial.js
│   │   │   │   ├── readable_serial_ordered.js
│   │   │   │   ├── state.js
│   │   │   │   ├── streamify.js
│   │   │   │   └── terminator.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── parallel.js
│   │   │   ├── README.md
│   │   │   ├── serial.js
│   │   │   ├── serialOrdered.js
│   │   │   └── stream.js
│   │   ├── axios
│   │   │   ├── CHANGELOG.md
│   │   │   ├── dist
│   │   │   │   ├── axios.js
│   │   │   │   ├── axios.js.map
│   │   │   │   ├── axios.min.js
│   │   │   │   ├── axios.min.js.map
│   │   │   │   ├── browser
│   │   │   │   │   ├── axios.cjs
│   │   │   │   │   └── axios.cjs.map
│   │   │   │   ├── esm
│   │   │   │   │   ├── axios.js
│   │   │   │   │   ├── axios.js.map
│   │   │   │   │   ├── axios.min.js
│   │   │   │   │   └── axios.min.js.map
│   │   │   │   └── node
│   │   │   │       ├── axios.cjs
│   │   │   │       └── axios.cjs.map
│   │   │   ├── index.d.cts
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── lib
│   │   │   │   ├── adapters
│   │   │   │   │   ├── adapters.js
│   │   │   │   │   ├── fetch.js
│   │   │   │   │   ├── http.js
│   │   │   │   │   ├── README.md
│   │   │   │   │   └── xhr.js
│   │   │   │   ├── axios.js
│   │   │   │   ├── cancel
│   │   │   │   │   ├── CanceledError.js
│   │   │   │   │   ├── CancelToken.js
│   │   │   │   │   └── isCancel.js
│   │   │   │   ├── core
│   │   │   │   │   ├── AxiosError.js
│   │   │   │   │   ├── AxiosHeaders.js
│   │   │   │   │   ├── Axios.js
│   │   │   │   │   ├── buildFullPath.js
│   │   │   │   │   ├── dispatchRequest.js
│   │   │   │   │   ├── InterceptorManager.js
│   │   │   │   │   ├── mergeConfig.js
│   │   │   │   │   ├── README.md
│   │   │   │   │   ├── settle.js
│   │   │   │   │   └── transformData.js
│   │   │   │   ├── defaults
│   │   │   │   │   ├── index.js
│   │   │   │   │   └── transitional.js
│   │   │   │   ├── env
│   │   │   │   │   ├── classes
│   │   │   │   │   │   └── FormData.js
│   │   │   │   │   ├── data.js
│   │   │   │   │   └── README.md
│   │   │   │   ├── helpers
│   │   │   │   │   ├── AxiosTransformStream.js
│   │   │   │   │   ├── AxiosURLSearchParams.js
│   │   │   │   │   ├── bind.js
│   │   │   │   │   ├── buildURL.js
│   │   │   │   │   ├── callbackify.js
│   │   │   │   │   ├── combineURLs.js
│   │   │   │   │   ├── composeSignals.js
│   │   │   │   │   ├── cookies.js
│   │   │   │   │   ├── deprecatedMethod.js
│   │   │   │   │   ├── estimateDataURLDecodedBytes.js
│   │   │   │   │   ├── formDataToJSON.js
│   │   │   │   │   ├── formDataToStream.js
│   │   │   │   │   ├── fromDataURI.js
│   │   │   │   │   ├── HttpStatusCode.js
│   │   │   │   │   ├── isAbsoluteURL.js
│   │   │   │   │   ├── isAxiosError.js
│   │   │   │   │   ├── isURLSameOrigin.js
│   │   │   │   │   ├── null.js
│   │   │   │   │   ├── parseHeaders.js
│   │   │   │   │   ├── parseProtocol.js
│   │   │   │   │   ├── progressEventReducer.js
│   │   │   │   │   ├── readBlob.js
│   │   │   │   │   ├── README.md
│   │   │   │   │   ├── resolveConfig.js
│   │   │   │   │   ├── speedometer.js
│   │   │   │   │   ├── spread.js
│   │   │   │   │   ├── throttle.js
│   │   │   │   │   ├── toFormData.js
│   │   │   │   │   ├── toURLEncodedForm.js
│   │   │   │   │   ├── trackStream.js
│   │   │   │   │   ├── validator.js
│   │   │   │   │   └── ZlibHeaderTransformStream.js
│   │   │   │   ├── platform
│   │   │   │   │   ├── browser
│   │   │   │   │   │   ├── classes
│   │   │   │   │   │   │   ├── Blob.js
│   │   │   │   │   │   │   ├── FormData.js
│   │   │   │   │   │   │   └── URLSearchParams.js
│   │   │   │   │   │   └── index.js
│   │   │   │   │   ├── common
│   │   │   │   │   │   └── utils.js
│   │   │   │   │   ├── index.js
│   │   │   │   │   └── node
│   │   │   │   │       ├── classes
│   │   │   │   │       │   ├── FormData.js
│   │   │   │   │       │   └── URLSearchParams.js
│   │   │   │   │       └── index.js
│   │   │   │   └── utils.js
│   │   │   ├── LICENSE
│   │   │   ├── MIGRATION_GUIDE.md
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── call-bind-apply-helpers
│   │   │   ├── actualApply.d.ts
│   │   │   ├── actualApply.js
│   │   │   ├── applyBind.d.ts
│   │   │   ├── applyBind.js
│   │   │   ├── CHANGELOG.md
│   │   │   ├── functionApply.d.ts
│   │   │   ├── functionApply.js
│   │   │   ├── functionCall.d.ts
│   │   │   ├── functionCall.js
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── reflectApply.d.ts
│   │   │   ├── reflectApply.js
│   │   │   ├── test
│   │   │   │   └── index.js
│   │   │   └── tsconfig.json
│   │   ├── combined-stream
│   │   │   ├── lib
│   │   │   │   └── combined_stream.js
│   │   │   ├── License
│   │   │   ├── package.json
│   │   │   ├── Readme.md
│   │   │   └── yarn.lock
│   │   ├── delayed-stream
│   │   │   ├── lib
│   │   │   │   └── delayed_stream.js
│   │   │   ├── License
│   │   │   ├── Makefile
│   │   │   ├── package.json
│   │   │   └── Readme.md
│   │   ├── dunder-proto
│   │   │   ├── CHANGELOG.md
│   │   │   ├── get.d.ts
│   │   │   ├── get.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── set.d.ts
│   │   │   ├── set.js
│   │   │   ├── test
│   │   │   │   ├── get.js
│   │   │   │   ├── index.js
│   │   │   │   └── set.js
│   │   │   └── tsconfig.json
│   │   ├── @esbuild
│   │   │   └── linux-x64
│   │   │       ├── bin
│   │   │       │   └── esbuild
│   │   │       ├── package.json
│   │   │       └── README.md
│   │   ├── esbuild
│   │   │   ├── bin
│   │   │   │   └── esbuild
│   │   │   ├── install.js
│   │   │   ├── lib
│   │   │   │   ├── main.d.ts
│   │   │   │   └── main.js
│   │   │   ├── LICENSE.md
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── es-define-property
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── test
│   │   │   │   └── index.js
│   │   │   └── tsconfig.json
│   │   ├── es-errors
│   │   │   ├── CHANGELOG.md
│   │   │   ├── eval.d.ts
│   │   │   ├── eval.js
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── range.d.ts
│   │   │   ├── range.js
│   │   │   ├── README.md
│   │   │   ├── ref.d.ts
│   │   │   ├── ref.js
│   │   │   ├── syntax.d.ts
│   │   │   ├── syntax.js
│   │   │   ├── test
│   │   │   │   └── index.js
│   │   │   ├── tsconfig.json
│   │   │   ├── type.d.ts
│   │   │   ├── type.js
│   │   │   ├── uri.d.ts
│   │   │   └── uri.js
│   │   ├── es-object-atoms
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── isObject.d.ts
│   │   │   ├── isObject.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── RequireObjectCoercible.d.ts
│   │   │   ├── RequireObjectCoercible.js
│   │   │   ├── test
│   │   │   │   └── index.js
│   │   │   ├── ToObject.d.ts
│   │   │   ├── ToObject.js
│   │   │   └── tsconfig.json
│   │   ├── es-set-tostringtag
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── test
│   │   │   │   └── index.js
│   │   │   └── tsconfig.json
│   │   ├── follow-redirects
│   │   │   ├── debug.js
│   │   │   ├── http.js
│   │   │   ├── https.js
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── form-data
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.d.ts
│   │   │   ├── lib
│   │   │   │   ├── browser.js
│   │   │   │   ├── form_data.js
│   │   │   │   └── populate.js
│   │   │   ├── License
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── function-bind
│   │   │   ├── CHANGELOG.md
│   │   │   ├── implementation.js
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   └── test
│   │   │       └── index.js
│   │   ├── get-intrinsic
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   └── test
│   │   │       └── GetIntrinsic.js
│   │   ├── get-proto
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── Object.getPrototypeOf.d.ts
│   │   │   ├── Object.getPrototypeOf.js
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── Reflect.getPrototypeOf.d.ts
│   │   │   ├── Reflect.getPrototypeOf.js
│   │   │   ├── test
│   │   │   │   └── index.js
│   │   │   └── tsconfig.json
│   │   ├── gopd
│   │   │   ├── CHANGELOG.md
│   │   │   ├── gOPD.d.ts
│   │   │   ├── gOPD.js
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── test
│   │   │   │   └── index.js
│   │   │   └── tsconfig.json
│   │   ├── hasown
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   └── tsconfig.json
│   │   ├── has-symbols
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── shams.d.ts
│   │   │   ├── shams.js
│   │   │   ├── test
│   │   │   │   ├── index.js
│   │   │   │   ├── shams
│   │   │   │   │   ├── core-js.js
│   │   │   │   │   └── get-own-property-symbols.js
│   │   │   │   └── tests.js
│   │   │   └── tsconfig.json
│   │   ├── has-tostringtag
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── shams.d.ts
│   │   │   ├── shams.js
│   │   │   ├── test
│   │   │   │   ├── index.js
│   │   │   │   ├── shams
│   │   │   │   │   ├── core-js.js
│   │   │   │   │   └── get-own-property-symbols.js
│   │   │   │   └── tests.js
│   │   │   └── tsconfig.json
│   │   ├── laravel-vite-plugin
│   │   │   ├── bin
│   │   │   │   └── clean.js
│   │   │   ├── dist
│   │   │   │   ├── dev-server-index.html
│   │   │   │   ├── index.d.ts
│   │   │   │   └── index.js
│   │   │   ├── inertia-helpers
│   │   │   │   ├── index.d.ts
│   │   │   │   └── index.js
│   │   │   ├── LICENSE.md
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── math-intrinsics
│   │   │   ├── abs.d.ts
│   │   │   ├── abs.js
│   │   │   ├── CHANGELOG.md
│   │   │   ├── constants
│   │   │   │   ├── maxArrayLength.d.ts
│   │   │   │   ├── maxArrayLength.js
│   │   │   │   ├── maxSafeInteger.d.ts
│   │   │   │   ├── maxSafeInteger.js
│   │   │   │   ├── maxValue.d.ts
│   │   │   │   └── maxValue.js
│   │   │   ├── floor.d.ts
│   │   │   ├── floor.js
│   │   │   ├── isFinite.d.ts
│   │   │   ├── isFinite.js
│   │   │   ├── isInteger.d.ts
│   │   │   ├── isInteger.js
│   │   │   ├── isNaN.d.ts
│   │   │   ├── isNaN.js
│   │   │   ├── isNegativeZero.d.ts
│   │   │   ├── isNegativeZero.js
│   │   │   ├── LICENSE
│   │   │   ├── max.d.ts
│   │   │   ├── max.js
│   │   │   ├── min.d.ts
│   │   │   ├── min.js
│   │   │   ├── mod.d.ts
│   │   │   ├── mod.js
│   │   │   ├── package.json
│   │   │   ├── pow.d.ts
│   │   │   ├── pow.js
│   │   │   ├── README.md
│   │   │   ├── round.d.ts
│   │   │   ├── round.js
│   │   │   ├── sign.d.ts
│   │   │   ├── sign.js
│   │   │   ├── test
│   │   │   │   └── index.js
│   │   │   └── tsconfig.json
│   │   ├── mime-db
│   │   │   ├── db.json
│   │   │   ├── HISTORY.md
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── mime-types
│   │   │   ├── HISTORY.md
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── nanoid
│   │   │   ├── async
│   │   │   │   ├── index.browser.cjs
│   │   │   │   ├── index.browser.js
│   │   │   │   ├── index.cjs
│   │   │   │   ├── index.d.ts
│   │   │   │   ├── index.js
│   │   │   │   ├── index.native.js
│   │   │   │   └── package.json
│   │   │   ├── bin
│   │   │   │   └── nanoid.cjs
│   │   │   ├── index.browser.cjs
│   │   │   ├── index.browser.js
│   │   │   ├── index.cjs
│   │   │   ├── index.d.cts
│   │   │   ├── index.d.ts
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── nanoid.js
│   │   │   ├── non-secure
│   │   │   │   ├── index.cjs
│   │   │   │   ├── index.d.ts
│   │   │   │   ├── index.js
│   │   │   │   └── package.json
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   └── url-alphabet
│   │   │       ├── index.cjs
│   │   │       ├── index.js
│   │   │       └── package.json
│   │   ├── picocolors
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── picocolors.browser.js
│   │   │   ├── picocolors.d.ts
│   │   │   ├── picocolors.js
│   │   │   ├── README.md
│   │   │   └── types.d.ts
│   │   ├── picomatch
│   │   │   ├── CHANGELOG.md
│   │   │   ├── index.js
│   │   │   ├── lib
│   │   │   │   ├── constants.js
│   │   │   │   ├── parse.js
│   │   │   │   ├── picomatch.js
│   │   │   │   ├── scan.js
│   │   │   │   └── utils.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── postcss
│   │   │   ├── lib
│   │   │   │   ├── at-rule.d.ts
│   │   │   │   ├── at-rule.js
│   │   │   │   ├── comment.d.ts
│   │   │   │   ├── comment.js
│   │   │   │   ├── container.d.ts
│   │   │   │   ├── container.js
│   │   │   │   ├── css-syntax-error.d.ts
│   │   │   │   ├── css-syntax-error.js
│   │   │   │   ├── declaration.d.ts
│   │   │   │   ├── declaration.js
│   │   │   │   ├── document.d.ts
│   │   │   │   ├── document.js
│   │   │   │   ├── fromJSON.d.ts
│   │   │   │   ├── fromJSON.js
│   │   │   │   ├── input.d.ts
│   │   │   │   ├── input.js
│   │   │   │   ├── lazy-result.d.ts
│   │   │   │   ├── lazy-result.js
│   │   │   │   ├── list.d.ts
│   │   │   │   ├── list.js
│   │   │   │   ├── map-generator.js
│   │   │   │   ├── node.d.ts
│   │   │   │   ├── node.js
│   │   │   │   ├── no-work-result.d.ts
│   │   │   │   ├── no-work-result.js
│   │   │   │   ├── parse.d.ts
│   │   │   │   ├── parse.js
│   │   │   │   ├── parser.js
│   │   │   │   ├── postcss.d.mts
│   │   │   │   ├── postcss.d.ts
│   │   │   │   ├── postcss.js
│   │   │   │   ├── postcss.mjs
│   │   │   │   ├── previous-map.d.ts
│   │   │   │   ├── previous-map.js
│   │   │   │   ├── processor.d.ts
│   │   │   │   ├── processor.js
│   │   │   │   ├── result.d.ts
│   │   │   │   ├── result.js
│   │   │   │   ├── root.d.ts
│   │   │   │   ├── root.js
│   │   │   │   ├── rule.d.ts
│   │   │   │   ├── rule.js
│   │   │   │   ├── stringifier.d.ts
│   │   │   │   ├── stringifier.js
│   │   │   │   ├── stringify.d.ts
│   │   │   │   ├── stringify.js
│   │   │   │   ├── symbols.js
│   │   │   │   ├── terminal-highlight.js
│   │   │   │   ├── tokenize.js
│   │   │   │   ├── warning.d.ts
│   │   │   │   ├── warning.js
│   │   │   │   └── warn-once.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── proxy-from-env
│   │   │   ├── index.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   └── test.js
│   │   ├── @rollup
│   │   │   ├── rollup-linux-x64-gnu
│   │   │   │   ├── package.json
│   │   │   │   ├── README.md
│   │   │   │   └── rollup.linux-x64-gnu.node
│   │   │   └── rollup-linux-x64-musl
│   │   │       ├── package.json
│   │   │       ├── README.md
│   │   │       └── rollup.linux-x64-musl.node
│   │   ├── rollup
│   │   │   ├── dist
│   │   │   │   ├── bin
│   │   │   │   │   └── rollup
│   │   │   │   ├── es
│   │   │   │   │   ├── getLogFilter.js
│   │   │   │   │   ├── package.json
│   │   │   │   │   ├── parseAst.js
│   │   │   │   │   ├── rollup.js
│   │   │   │   │   └── shared
│   │   │   │   │       ├── node-entry.js
│   │   │   │   │       ├── parseAst.js
│   │   │   │   │       └── watch.js
│   │   │   │   ├── getLogFilter.d.ts
│   │   │   │   ├── getLogFilter.js
│   │   │   │   ├── loadConfigFile.d.ts
│   │   │   │   ├── loadConfigFile.js
│   │   │   │   ├── native.js
│   │   │   │   ├── parseAst.d.ts
│   │   │   │   ├── parseAst.js
│   │   │   │   ├── rollup.d.ts
│   │   │   │   ├── rollup.js
│   │   │   │   └── shared
│   │   │   │       ├── fsevents-importer.js
│   │   │   │       ├── index.js
│   │   │   │       ├── loadConfigFile.js
│   │   │   │       ├── parseAst.js
│   │   │   │       ├── rollup.js
│   │   │   │       ├── watch-cli.js
│   │   │   │       └── watch.js
│   │   │   ├── LICENSE.md
│   │   │   ├── package.json
│   │   │   └── README.md
│   │   ├── source-map-js
│   │   │   ├── lib
│   │   │   │   ├── array-set.js
│   │   │   │   ├── base64.js
│   │   │   │   ├── base64-vlq.js
│   │   │   │   ├── binary-search.js
│   │   │   │   ├── mapping-list.js
│   │   │   │   ├── quick-sort.js
│   │   │   │   ├── source-map-consumer.d.ts
│   │   │   │   ├── source-map-consumer.js
│   │   │   │   ├── source-map-generator.d.ts
│   │   │   │   ├── source-map-generator.js
│   │   │   │   ├── source-node.d.ts
│   │   │   │   ├── source-node.js
│   │   │   │   └── util.js
│   │   │   ├── LICENSE
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   ├── source-map.d.ts
│   │   │   └── source-map.js
│   │   ├── @types
│   │   │   └── estree
│   │   │       ├── flow.d.ts
│   │   │       ├── index.d.ts
│   │   │       ├── LICENSE
│   │   │       ├── package.json
│   │   │       └── README.md
│   │   ├── vite
│   │   │   ├── bin
│   │   │   │   ├── openChrome.applescript
│   │   │   │   └── vite.js
│   │   │   ├── client.d.ts
│   │   │   ├── dist
│   │   │   │   ├── client
│   │   │   │   │   ├── client.mjs
│   │   │   │   │   └── env.mjs
│   │   │   │   ├── node
│   │   │   │   │   ├── chunks
│   │   │   │   │   │   ├── dep-BB45zftN.js
│   │   │   │   │   │   ├── dep-BK3b2jBa.js
│   │   │   │   │   │   ├── dep-D-7KCb9p.js
│   │   │   │   │   │   ├── dep-Dnp7gl8U.js
│   │   │   │   │   │   └── dep-IQS-Za7F.js
│   │   │   │   │   ├── cli.js
│   │   │   │   │   ├── constants.js
│   │   │   │   │   ├── index.d.ts
│   │   │   │   │   ├── index.js
│   │   │   │   │   ├── runtime.d.ts
│   │   │   │   │   ├── runtime.js
│   │   │   │   │   └── types.d-aGj9QkWt.d.ts
│   │   │   │   └── node-cjs
│   │   │   │       └── publicUtils.cjs
│   │   │   ├── index.cjs
│   │   │   ├── index.d.cts
│   │   │   ├── LICENSE.md
│   │   │   ├── package.json
│   │   │   ├── README.md
│   │   │   └── types
│   │   │       ├── customEvent.d.ts
│   │   │       ├── hmrPayload.d.ts
│   │   │       ├── hot.d.ts
│   │   │       ├── importGlob.d.ts
│   │   │       ├── import-meta.d.ts
│   │   │       ├── importMeta.d.ts
│   │   │       ├── metadata.d.ts
│   │   │       └── package.json
│   │   └── vite-plugin-full-reload
│   │       ├── dist
│   │       │   ├── index.cjs
│   │       │   ├── index.d.cts
│   │       │   ├── index.d.ts
│   │       │   └── index.js
│   │       ├── LICENSE.txt
│   │       ├── package.json
│   │       └── README.md
│   ├── package.json
│   ├── package-lock.json
│   ├── packages
│   │   └── Webkul
│   │       ├── Activity
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   ├── Activity.php
│   │       │       │   ├── File.php
│   │       │       │   └── Participant.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_05_12_150329_create_activities_table.php
│   │       │       │       ├── 2021_05_15_151855_create_activity_files_table.php
│   │       │       │       ├── 2021_07_28_142453_create_activity_participants_table.php
│   │       │       │       ├── 2021_11_17_190943_add_location_column_in_activities_table.php
│   │       │       │       └── 2025_01_17_151632_alter_activities_table.php
│   │       │       ├── Models
│   │       │       │   ├── Activity.php
│   │       │       │   ├── ActivityProxy.php
│   │       │       │   ├── File.php
│   │       │       │   ├── FileProxy.php
│   │       │       │   ├── Participant.php
│   │       │       │   └── ParticipantProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── ActivityServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       ├── Repositories
│   │       │       │   ├── ActivityRepository.php
│   │       │       │   ├── FileRepository.php
│   │       │       │   └── ParticipantRepository.php
│   │       │       └── Traits
│   │       │           └── LogsActivity.php
│   │       ├── Admin
│   │       │   ├── composer.json
│   │       │   ├── package.json
│   │       │   ├── postcss.config.cjs
│   │       │   ├── src
│   │       │   │   ├── Bouncer.php
│   │       │   │   ├── Config
│   │       │   │   │   ├── acl.php
│   │       │   │   │   ├── attribute_entity_types.php
│   │       │   │   │   ├── attribute_lookups.php
│   │       │   │   │   ├── core_config.php
│   │       │   │   │   └── menu.php
│   │       │   │   ├── Database
│   │       │   │   │   └── Migrations
│   │       │   │   │       ├── 2021_06_07_162808_add_lead_view_permission_column_in_users_table.php
│   │       │   │   │       └── 2021_10_02_170105_insert_expected_closed_date_column_in_attributes_table.php
│   │       │   │   ├── DataGrids
│   │       │   │   │   ├── Activity
│   │       │   │   │   │   └── ActivityDataGrid.php
│   │       │   │   │   ├── Contact
│   │       │   │   │   │   ├── OrganizationDataGrid.php
│   │       │   │   │   │   └── PersonDataGrid.php
│   │       │   │   │   ├── Lead
│   │       │   │   │   │   └── LeadDataGrid.php
│   │       │   │   │   ├── Mail
│   │       │   │   │   │   └── EmailDataGrid.php
│   │       │   │   │   ├── Product
│   │       │   │   │   │   └── ProductDataGrid.php
│   │       │   │   │   ├── Quote
│   │       │   │   │   │   └── QuoteDataGrid.php
│   │       │   │   │   └── Settings
│   │       │   │   │       ├── AttributeDataGrid.php
│   │       │   │   │       ├── DataTransfer
│   │       │   │   │       │   └── ImportDataGrid.php
│   │       │   │   │       ├── EmailTemplateDataGrid.php
│   │       │   │   │       ├── GroupDataGrid.php
│   │       │   │   │       ├── Marketing
│   │       │   │   │       │   ├── CampaignDatagrid.php
│   │       │   │   │       │   └── EventDataGrid.php
│   │       │   │   │       ├── PipelineDataGrid.php
│   │       │   │   │       ├── RoleDataGrid.php
│   │       │   │   │       ├── SourceDataGrid.php
│   │       │   │   │       ├── TagDataGrid.php
│   │       │   │   │       ├── TypeDataGrid.php
│   │       │   │   │       ├── UserDataGrid.php
│   │       │   │   │       ├── WarehouseDataGrid.php
│   │       │   │   │       ├── WebhookDataGrid.php
│   │       │   │   │       └── WorkflowDataGrid.php
│   │       │   │   ├── Exceptions
│   │       │   │   │   └── Handler.php
│   │       │   │   ├── Facades
│   │       │   │   │   └── Bouncer.php
│   │       │   │   ├── Helpers
│   │       │   │   │   ├── Dashboard.php
│   │       │   │   │   └── Reporting
│   │       │   │   │       ├── AbstractReporting.php
│   │       │   │   │       ├── Activity.php
│   │       │   │   │       ├── Lead.php
│   │       │   │   │       ├── Organization.php
│   │       │   │   │       ├── Person.php
│   │       │   │   │       ├── Product.php
│   │       │   │   │       └── Quote.php
│   │       │   │   ├── Http
│   │       │   │   │   ├── Controllers
│   │       │   │   │   │   ├── Activity
│   │       │   │   │   │   │   └── ActivityController.php
│   │       │   │   │   │   ├── Configuration
│   │       │   │   │   │   │   └── ConfigurationController.php
│   │       │   │   │   │   ├── Contact
│   │       │   │   │   │   │   ├── OrganizationController.php
│   │       │   │   │   │   │   └── Persons
│   │       │   │   │   │   │       ├── ActivityController.php
│   │       │   │   │   │   │       ├── PersonController.php
│   │       │   │   │   │   │       └── TagController.php
│   │       │   │   │   │   ├── Controller.php
│   │       │   │   │   │   ├── DashboardController.php
│   │       │   │   │   │   ├── DataGrid
│   │       │   │   │   │   │   └── SavedFilterController.php
│   │       │   │   │   │   ├── DataGridController.php
│   │       │   │   │   │   ├── Lead
│   │       │   │   │   │   │   ├── ActivityController.php
│   │       │   │   │   │   │   ├── EmailController.php
│   │       │   │   │   │   │   ├── LeadController.php
│   │       │   │   │   │   │   ├── QuoteController.php
│   │       │   │   │   │   │   └── TagController.php
│   │       │   │   │   │   ├── Mail
│   │       │   │   │   │   │   ├── EmailController.php
│   │       │   │   │   │   │   └── TagController.php
│   │       │   │   │   │   ├── Products
│   │       │   │   │   │   │   ├── ActivityController.php
│   │       │   │   │   │   │   ├── ProductController.php
│   │       │   │   │   │   │   └── TagController.php
│   │       │   │   │   │   ├── Quote
│   │       │   │   │   │   │   └── QuoteController.php
│   │       │   │   │   │   ├── Settings
│   │       │   │   │   │   │   ├── AttributeController.php
│   │       │   │   │   │   │   ├── DataTransfer
│   │       │   │   │   │   │   │   └── ImportController.php
│   │       │   │   │   │   │   ├── EmailTemplateController.php
│   │       │   │   │   │   │   ├── GroupController.php
│   │       │   │   │   │   │   ├── LocationController.php
│   │       │   │   │   │   │   ├── Marketing
│   │       │   │   │   │   │   │   ├── CampaignsController.php
│   │       │   │   │   │   │   │   └── EventController.php
│   │       │   │   │   │   │   ├── PipelineController.php
│   │       │   │   │   │   │   ├── RoleController.php
│   │       │   │   │   │   │   ├── SettingController.php
│   │       │   │   │   │   │   ├── SourceController.php
│   │       │   │   │   │   │   ├── TagController.php
│   │       │   │   │   │   │   ├── TypeController.php
│   │       │   │   │   │   │   ├── UserController.php
│   │       │   │   │   │   │   ├── Warehouse
│   │       │   │   │   │   │   │   ├── ActivityController.php
│   │       │   │   │   │   │   │   ├── TagController.php
│   │       │   │   │   │   │   │   └── WarehouseController.php
│   │       │   │   │   │   │   ├── WebFormController.php
│   │       │   │   │   │   │   ├── WebhookController.php
│   │       │   │   │   │   │   └── WorkflowController.php
│   │       │   │   │   │   ├── TinyMCEController.php
│   │       │   │   │   │   └── User
│   │       │   │   │   │       ├── AccountController.php
│   │       │   │   │   │       ├── ForgotPasswordController.php
│   │       │   │   │   │       ├── ResetPasswordController.php
│   │       │   │   │   │       └── SessionController.php
│   │       │   │   │   ├── helpers.php
│   │       │   │   │   ├── Middleware
│   │       │   │   │   │   ├── Bouncer.php
│   │       │   │   │   │   ├── Locale.php
│   │       │   │   │   │   └── SanitizeUrl.php
│   │       │   │   │   ├── Requests
│   │       │   │   │   │   ├── AttributeForm.php
│   │       │   │   │   │   ├── ConfigurationForm.php
│   │       │   │   │   │   ├── LeadForm.php
│   │       │   │   │   │   ├── MassDestroyRequest.php
│   │       │   │   │   │   ├── MassUpdateRequest.php
│   │       │   │   │   │   ├── PipelineForm.php
│   │       │   │   │   │   └── UserForm.php
│   │       │   │   │   └── Resources
│   │       │   │   │       ├── ActivityFileResource.php
│   │       │   │   │       ├── ActivityParticipantResource.php
│   │       │   │   │       ├── ActivityResource.php
│   │       │   │   │       ├── EmailAttachmentResource.php
│   │       │   │   │       ├── EmailResource.php
│   │       │   │   │       ├── LeadResource.php
│   │       │   │   │       ├── OrganizationResource.php
│   │       │   │   │       ├── PersonResource.php
│   │       │   │   │       ├── PipelineResource.php
│   │       │   │   │       ├── ProductResource.php
│   │       │   │   │       ├── QuoteResource.php
│   │       │   │   │       ├── SourceResource.php
│   │       │   │   │       ├── StageResource.php
│   │       │   │   │       ├── TagResource.php
│   │       │   │   │       ├── TypeResource.php
│   │       │   │   │       └── UserResource.php
│   │       │   │   ├── Listeners
│   │       │   │   │   ├── Activity.php
│   │       │   │   │   ├── Lead.php
│   │       │   │   │   └── Person.php
│   │       │   │   ├── Notifications
│   │       │   │   │   ├── Common.php
│   │       │   │   │   └── User
│   │       │   │   │       ├── Create.php
│   │       │   │   │       ├── UserResetPassword.php
│   │       │   │   │       └── UserUpdatePassword.php
│   │       │   │   ├── Providers
│   │       │   │   │   ├── AdminServiceProvider.php
│   │       │   │   │   ├── EventServiceProvider.php
│   │       │   │   │   └── ModuleServiceProvider.php
│   │       │   │   ├── Requests
│   │       │   │   │   └── WebhookRequest.php
│   │       │   │   ├── Resources
│   │       │   │   │   ├── assets
│   │       │   │   │   │   ├── css
│   │       │   │   │   │   │   └── app.css
│   │       │   │   │   │   ├── fonts
│   │       │   │   │   │   │   └── icomoon.woff
│   │       │   │   │   │   ├── images
│   │       │   │   │   │   │   ├── corner-clip.svg
│   │       │   │   │   │   │   ├── dark-corner-clip.svg
│   │       │   │   │   │   │   ├── dark-logo.svg
│   │       │   │   │   │   │   ├── empty-placeholders
│   │       │   │   │   │   │   │   ├── activities.svg
│   │       │   │   │   │   │   │   ├── calls.svg
│   │       │   │   │   │   │   │   ├── default.svg
│   │       │   │   │   │   │   │   ├── description.svg
│   │       │   │   │   │   │   │   ├── emails.svg
│   │       │   │   │   │   │   │   ├── files.svg
│   │       │   │   │   │   │   │   ├── lunches.svg
│   │       │   │   │   │   │   │   ├── meetings.svg
│   │       │   │   │   │   │   │   ├── notes.svg
│   │       │   │   │   │   │   │   ├── organizations.svg
│   │       │   │   │   │   │   │   ├── pipedrive.svg
│   │       │   │   │   │   │   │   ├── plans.svg
│   │       │   │   │   │   │   │   ├── products.svg
│   │       │   │   │   │   │   │   ├── quotes.svg
│   │       │   │   │   │   │   │   └── users.svg
│   │       │   │   │   │   │   ├── error.svg
│   │       │   │   │   │   │   ├── favicon.ico
│   │       │   │   │   │   │   ├── logo.svg
│   │       │   │   │   │   │   ├── mobile-dark-logo.svg
│   │       │   │   │   │   │   └── mobile-light-logo.svg
│   │       │   │   │   │   ├── js
│   │       │   │   │   │   │   ├── app.js
│   │       │   │   │   │   │   ├── chart.js
│   │       │   │   │   │   │   ├── directives
│   │       │   │   │   │   │   │   ├── debounce.js
│   │       │   │   │   │   │   │   ├── dompurify.js
│   │       │   │   │   │   │   │   └── tooltip.js
│   │       │   │   │   │   │   └── plugins
│   │       │   │   │   │   │       ├── admin.js
│   │       │   │   │   │   │       ├── axios.js
│   │       │   │   │   │   │       ├── createElement.js
│   │       │   │   │   │   │       ├── draggable.js
│   │       │   │   │   │   │       ├── emitter.js
│   │       │   │   │   │   │       ├── flatpickr.js
│   │       │   │   │   │   │       ├── vee-validate.js
│   │       │   │   │   │   │       └── vue-cal.js
│   │       │   │   │   │   └── locales
│   │       │   │   │   │       ├── hi_IN.json
│   │       │   │   │   │       └── sin.json
│   │       │   │   │   ├── lang
│   │       │   │   │   │   ├── ar
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── en
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── es
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── fa
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── pt_BR
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── tr
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   └── vi
│   │       │   │   │   │       └── app.php
│   │       │   │   │   └── views
│   │       │   │   │       ├── activities
│   │       │   │   │       │   ├── datagrid
│   │       │   │   │       │   │   └── is-done.blade.php
│   │       │   │   │       │   ├── edit.blade.php
│   │       │   │   │       │   └── index.blade.php
│   │       │   │   │       ├── components
│   │       │   │   │       │   ├── accordion
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── activities
│   │       │   │   │       │   │   ├── actions
│   │       │   │   │       │   │   │   ├── activity
│   │       │   │   │       │   │   │   │   └── participants.blade.php
│   │       │   │   │       │   │   │   ├── activity.blade.php
│   │       │   │   │       │   │   │   ├── file.blade.php
│   │       │   │   │       │   │   │   ├── mail.blade.php
│   │       │   │   │       │   │   │   └── note.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── attachments
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── attributes
│   │       │   │   │       │   │   ├── edit
│   │       │   │   │       │   │   │   ├── address.blade.php
│   │       │   │   │       │   │   │   ├── boolean.blade.php
│   │       │   │   │       │   │   │   ├── checkbox.blade.php
│   │       │   │   │       │   │   │   ├── date.blade.php
│   │       │   │   │       │   │   │   ├── datetime.blade.php
│   │       │   │   │       │   │   │   ├── email.blade.php
│   │       │   │   │       │   │   │   ├── file.blade.php
│   │       │   │   │       │   │   │   ├── image.blade.php
│   │       │   │   │       │   │   │   ├── index.blade.php
│   │       │   │   │       │   │   │   ├── lookup.blade.php
│   │       │   │   │       │   │   │   ├── multiselect.blade.php
│   │       │   │   │       │   │   │   ├── phone.blade.php
│   │       │   │   │       │   │   │   ├── price.blade.php
│   │       │   │   │       │   │   │   ├── select.blade.php
│   │       │   │   │       │   │   │   ├── textarea.blade.php
│   │       │   │   │       │   │   │   └── text.blade.php
│   │       │   │   │       │   │   ├── index.blade.php
│   │       │   │   │       │   │   ├── view
│   │       │   │   │       │   │   │   ├── address.blade.php
│   │       │   │   │       │   │   │   ├── boolean.blade.php
│   │       │   │   │       │   │   │   ├── checkbox.blade.php
│   │       │   │   │       │   │   │   ├── date.blade.php
│   │       │   │   │       │   │   │   ├── datetime.blade.php
│   │       │   │   │       │   │   │   ├── email.blade.php
│   │       │   │   │       │   │   │   ├── file.blade.php
│   │       │   │   │       │   │   │   ├── image.blade.php
│   │       │   │   │       │   │   │   ├── lookup.blade.php
│   │       │   │   │       │   │   │   ├── multiselect.blade.php
│   │       │   │   │       │   │   │   ├── phone.blade.php
│   │       │   │   │       │   │   │   ├── price.blade.php
│   │       │   │   │       │   │   │   ├── select.blade.php
│   │       │   │   │       │   │   │   ├── textarea.blade.php
│   │       │   │   │       │   │   │   └── text.blade.php
│   │       │   │   │       │   │   └── view.blade.php
│   │       │   │   │       │   ├── avatar
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── breadcrumbs
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── button
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── charts
│   │       │   │   │       │   │   ├── bar.blade.php
│   │       │   │   │       │   │   ├── doughnut.blade.php
│   │       │   │   │       │   │   └── line.blade.php
│   │       │   │   │       │   ├── datagrid
│   │       │   │   │       │   │   ├── export
│   │       │   │   │       │   │   │   ├── index.blade.php
│   │       │   │   │       │   │   │   └── temp.blade.php
│   │       │   │   │       │   │   ├── index.blade.php
│   │       │   │   │       │   │   ├── table.blade.php
│   │       │   │   │       │   │   ├── toolbar
│   │       │   │   │       │   │   │   ├── filter.blade.php
│   │       │   │   │       │   │   │   ├── mass-action.blade.php
│   │       │   │   │       │   │   │   ├── pagination.blade.php
│   │       │   │   │       │   │   │   └── search.blade.php
│   │       │   │   │       │   │   └── toolbar.blade.php
│   │       │   │   │       │   ├── drawer
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── dropdown
│   │       │   │   │       │   │   ├── index.blade.php
│   │       │   │   │       │   │   └── menu
│   │       │   │   │       │   │       └── item.blade.php
│   │       │   │   │       │   ├── example.blade.php
│   │       │   │   │       │   ├── flash-group
│   │       │   │   │       │   │   ├── index.blade.php
│   │       │   │   │       │   │   └── item.blade.php
│   │       │   │   │       │   ├── flat-picker
│   │       │   │   │       │   │   ├── date.blade.php
│   │       │   │   │       │   │   └── datetime.blade.php
│   │       │   │   │       │   ├── form
│   │       │   │   │       │   │   ├── control-group
│   │       │   │   │       │   │   │   ├── control.blade.php
│   │       │   │   │       │   │   │   ├── controls
│   │       │   │   │       │   │   │   │   ├── inline
│   │       │   │   │       │   │   │   │   │   ├── address.blade.php
│   │       │   │   │       │   │   │   │   │   ├── boolean.blade.php
│   │       │   │   │       │   │   │   │   │   ├── date.blade.php
│   │       │   │   │       │   │   │   │   │   ├── datetime.blade.php
│   │       │   │   │       │   │   │   │   │   ├── email.blade.php
│   │       │   │   │       │   │   │   │   │   ├── file.blade.php
│   │       │   │   │       │   │   │   │   │   ├── image.blade.php
│   │       │   │   │       │   │   │   │   │   ├── lookup.blade.php
│   │       │   │   │       │   │   │   │   │   ├── multiselect.blade.php
│   │       │   │   │       │   │   │   │   │   ├── phone.blade.php
│   │       │   │   │       │   │   │   │   │   ├── select.blade.php
│   │       │   │   │       │   │   │   │   │   └── text.blade.php
│   │       │   │   │       │   │   │   │   └── tags.blade.php
│   │       │   │   │       │   │   │   ├── error.blade.php
│   │       │   │   │       │   │   │   ├── index.blade.php
│   │       │   │   │       │   │   │   └── label.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── layouts
│   │       │   │   │       │   │   ├── anonymous.blade.php
│   │       │   │   │       │   │   ├── header
│   │       │   │   │       │   │   │   ├── desktop
│   │       │   │   │       │   │   │   │   └── mega-search.blade.php
│   │       │   │   │       │   │   │   ├── index.blade.php
│   │       │   │   │       │   │   │   ├── mobile
│   │       │   │   │       │   │   │   │   └── mega-search.blade.php
│   │       │   │   │       │   │   │   └── quick-creation.blade.php
│   │       │   │   │       │   │   ├── index.blade.php
│   │       │   │   │       │   │   ├── sidebar
│   │       │   │   │       │   │   │   ├── desktop
│   │       │   │   │       │   │   │   │   └── index.blade.php
│   │       │   │   │       │   │   │   └── mobile
│   │       │   │   │       │   │   │       └── index.blade.php
│   │       │   │   │       │   │   └── tabs.blade.php
│   │       │   │   │       │   ├── lookup
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── media
│   │       │   │   │       │   │   ├── images.blade.php
│   │       │   │   │       │   │   └── videos.blade.php
│   │       │   │   │       │   ├── modal
│   │       │   │   │       │   │   ├── confirm.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── shimmer
│   │       │   │   │       │   │   ├── accordion
│   │       │   │   │       │   │   │   └── index.blade.php
│   │       │   │   │       │   │   ├── activities
│   │       │   │   │       │   │   │   └── index.blade.php
│   │       │   │   │       │   │   ├── charts
│   │       │   │   │       │   │   │   └── bar.blade.php
│   │       │   │   │       │   │   ├── common
│   │       │   │   │       │   │   │   └── address.blade.php
│   │       │   │   │       │   │   ├── dashboard
│   │       │   │   │       │   │   │   └── index
│   │       │   │   │       │   │   │       ├── open-leads-by-states.blade.php
│   │       │   │   │       │   │   │       ├── over-all.blade.php
│   │       │   │   │       │   │   │       ├── revenue.blade.php
│   │       │   │   │       │   │   │       ├── revenue-by-sources.blade.php
│   │       │   │   │       │   │   │       ├── revenue-by-types.blade.php
│   │       │   │   │       │   │   │       ├── top-persons.blade.php
│   │       │   │   │       │   │   │       ├── top-selling-products.blade.php
│   │       │   │   │       │   │   │       └── total-leads.blade.php
│   │       │   │   │       │   │   ├── datagrid
│   │       │   │   │       │   │   │   ├── index.blade.php
│   │       │   │   │       │   │   │   ├── table
│   │       │   │   │       │   │   │   │   ├── body.blade.php
│   │       │   │   │       │   │   │   │   └── head.blade.php
│   │       │   │   │       │   │   │   ├── toolbar
│   │       │   │   │       │   │   │   │   ├── filter.blade.php
│   │       │   │   │       │   │   │   │   ├── pagination.blade.php
│   │       │   │   │       │   │   │   │   └── search.blade.php
│   │       │   │   │       │   │   │   └── toolbar.blade.php
│   │       │   │   │       │   │   ├── header
│   │       │   │   │       │   │   │   └── mega-search
│   │       │   │   │       │   │   │       ├── configurations.blade.php
│   │       │   │   │       │   │   │       ├── leads.blade.php
│   │       │   │   │       │   │   │       ├── persons.blade.php
│   │       │   │   │       │   │   │       ├── products.blade.php
│   │       │   │   │       │   │   │       ├── quotes.blade.php
│   │       │   │   │       │   │   │       └── settings.blade.php
│   │       │   │   │       │   │   ├── image
│   │       │   │   │       │   │   │   └── index.blade.php
│   │       │   │   │       │   │   ├── leads
│   │       │   │   │       │   │   │   ├── datagrid.blade.php
│   │       │   │   │       │   │   │   ├── index
│   │       │   │   │       │   │   │   │   ├── kanban
│   │       │   │   │       │   │   │   │   │   └── toolbar.blade.php
│   │       │   │   │       │   │   │   │   └── kanban.blade.php
│   │       │   │   │       │   │   │   └── view
│   │       │   │   │       │   │   │       ├── mail
│   │       │   │   │       │   │   │       │   └── index.blade.php
│   │       │   │   │       │   │   │       └── stages.blade.php
│   │       │   │   │       │   │   ├── mail
│   │       │   │   │       │   │   │   └── datagrid
│   │       │   │   │       │   │   │       ├── index.blade.php
│   │       │   │   │       │   │   │       └── table
│   │       │   │   │       │   │   │           ├── body.blade.php
│   │       │   │   │       │   │   │           └── head.blade.php
│   │       │   │   │       │   │   ├── person
│   │       │   │   │       │   │   │   └── view
│   │       │   │   │       │   │   │       ├── activities
│   │       │   │   │       │   │   │       │   └── index.blade.php
│   │       │   │   │       │   │   │       ├── stages.blade.php
│   │       │   │   │       │   │   │       └── tags.blade.php
│   │       │   │   │       │   │   ├── pipelines
│   │       │   │   │       │   │   │   └── kanban.blade.php
│   │       │   │   │       │   │   ├── quotes
│   │       │   │   │       │   │   │   └── index.blade.php
│   │       │   │   │       │   │   ├── settings
│   │       │   │   │       │   │   │   ├── attributes.blade.php
│   │       │   │   │       │   │   │   └── web-forms
│   │       │   │   │       │   │   │       ├── body.blade.php
│   │       │   │   │       │   │   │       ├── head.blade.php
│   │       │   │   │       │   │   │       └── index.blade.php
│   │       │   │   │       │   │   ├── tabs
│   │       │   │   │       │   │   │   └── index.blade.php
│   │       │   │   │       │   │   ├── tags
│   │       │   │   │       │   │   │   └── index.blade.php
│   │       │   │   │       │   │   ├── tinymce
│   │       │   │   │       │   │   │   └── index.blade.php
│   │       │   │   │       │   │   └── tree
│   │       │   │   │       │   │       └── index.blade.php
│   │       │   │   │       │   ├── spinner
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── table
│   │       │   │   │       │   │   ├── index.blade.php
│   │       │   │   │       │   │   ├── tbody
│   │       │   │   │       │   │   │   ├── index.blade.php
│   │       │   │   │       │   │   │   └── tr.blade.php
│   │       │   │   │       │   │   ├── td.blade.php
│   │       │   │   │       │   │   ├── th.blade.php
│   │       │   │   │       │   │   └── thead
│   │       │   │   │       │   │       ├── index.blade.php
│   │       │   │   │       │   │       └── tr.blade.php
│   │       │   │   │       │   ├── tabs
│   │       │   │   │       │   │   ├── index.blade.php
│   │       │   │   │       │   │   └── item.blade.php
│   │       │   │   │       │   ├── tags
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── tinymce
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   └── tree
│   │       │   │   │       │       ├── checkbox.blade.php
│   │       │   │   │       │       ├── radio.blade.php
│   │       │   │   │       │       └── view.blade.php
│   │       │   │   │       ├── configuration
│   │       │   │   │       │   ├── edit.blade.php
│   │       │   │   │       │   ├── field-type.blade.php
│   │       │   │   │       │   └── index.blade.php
│   │       │   │   │       ├── contacts
│   │       │   │   │       │   ├── organizations
│   │       │   │   │       │   │   ├── create.blade.php
│   │       │   │   │       │   │   ├── edit.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   └── persons
│   │       │   │   │       │       ├── create.blade.php
│   │       │   │   │       │       ├── edit.blade.php
│   │       │   │   │       │       ├── index.blade.php
│   │       │   │   │       │       ├── view
│   │       │   │   │       │       │   ├── attributes.blade.php
│   │       │   │   │       │       │   └── organization.blade.php
│   │       │   │   │       │       └── view.blade.php
│   │       │   │   │       ├── dashboard
│   │       │   │   │       │   ├── index
│   │       │   │   │       │   │   ├── open-leads-by-states.blade.php
│   │       │   │   │       │   │   ├── over-all.blade.php
│   │       │   │   │       │   │   ├── revenue.blade.php
│   │       │   │   │       │   │   ├── revenue-by-sources.blade.php
│   │       │   │   │       │   │   ├── revenue-by-types.blade.php
│   │       │   │   │       │   │   ├── top-persons.blade.php
│   │       │   │   │       │   │   ├── top-selling-products.blade.php
│   │       │   │   │       │   │   └── total-leads.blade.php
│   │       │   │   │       │   └── index.blade.php
│   │       │   │   │       ├── emails
│   │       │   │   │       │   ├── common
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── layout.blade.php
│   │       │   │   │       │   └── users
│   │       │   │   │       │       ├── create.blade.php
│   │       │   │   │       │       └── forget-password.blade.php
│   │       │   │   │       ├── errors
│   │       │   │   │       │   └── index.blade.php
│   │       │   │   │       ├── leads
│   │       │   │   │       │   ├── common
│   │       │   │   │       │   │   ├── contact.blade.php
│   │       │   │   │       │   │   └── products.blade.php
│   │       │   │   │       │   ├── create.blade.php
│   │       │   │   │       │   ├── edit.blade.php
│   │       │   │   │       │   ├── index
│   │       │   │   │       │   │   ├── kanban
│   │       │   │   │       │   │   │   ├── filter.blade.php
│   │       │   │   │       │   │   │   ├── search.blade.php
│   │       │   │   │       │   │   │   └── toolbar.blade.php
│   │       │   │   │       │   │   ├── kanban.blade.php
│   │       │   │   │       │   │   ├── table.blade.php
│   │       │   │   │       │   │   ├── upload.blade.php
│   │       │   │   │       │   │   └── view-switcher.blade.php
│   │       │   │   │       │   ├── index.blade.php
│   │       │   │   │       │   ├── view
│   │       │   │   │       │   │   ├── attributes.blade.php
│   │       │   │   │       │   │   ├── person.blade.php
│   │       │   │   │       │   │   ├── products.blade.php
│   │       │   │   │       │   │   ├── quotes.blade.php
│   │       │   │   │       │   │   └── stages.blade.php
│   │       │   │   │       │   └── view.blade.php
│   │       │   │   │       ├── mail
│   │       │   │   │       │   ├── index.blade.php
│   │       │   │   │       │   └── view.blade.php
│   │       │   │   │       ├── partials
│   │       │   │   │       │   └── breadcrumbs.blade.php
│   │       │   │   │       ├── products
│   │       │   │   │       │   ├── create.blade.php
│   │       │   │   │       │   ├── edit.blade.php
│   │       │   │   │       │   ├── index.blade.php
│   │       │   │   │       │   ├── view
│   │       │   │   │       │   │   ├── attributes.blade.php
│   │       │   │   │       │   │   └── inventory.blade.php
│   │       │   │   │       │   └── view.blade.php
│   │       │   │   │       ├── quotes
│   │       │   │   │       │   ├── create.blade.php
│   │       │   │   │       │   ├── edit.blade.php
│   │       │   │   │       │   ├── index.blade.php
│   │       │   │   │       │   └── pdf.blade.php
│   │       │   │   │       ├── sessions
│   │       │   │   │       │   ├── forgot-password.blade.php
│   │       │   │   │       │   ├── login.blade.php
│   │       │   │   │       │   └── reset-password.blade.php
│   │       │   │   │       ├── settings
│   │       │   │   │       │   ├── attributes
│   │       │   │   │       │   │   ├── create.blade.php
│   │       │   │   │       │   │   ├── edit.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── data-transfer
│   │       │   │   │       │   │   └── imports
│   │       │   │   │       │   │       ├── create.blade.php
│   │       │   │   │       │   │       ├── edit.blade.php
│   │       │   │   │       │   │       ├── import.blade.php
│   │       │   │   │       │   │       └── index.blade.php
│   │       │   │   │       │   ├── email-templates
│   │       │   │   │       │   │   ├── create.blade.php
│   │       │   │   │       │   │   ├── edit.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── groups
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── index.blade.php
│   │       │   │   │       │   ├── marketing
│   │       │   │   │       │   │   ├── campaigns
│   │       │   │   │       │   │   │   └── index.blade.php
│   │       │   │   │       │   │   └── events
│   │       │   │   │       │   │       └── index.blade.php
│   │       │   │   │       │   ├── pipelines
│   │       │   │   │       │   │   ├── create.blade.php
│   │       │   │   │       │   │   ├── edit.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── roles
│   │       │   │   │       │   │   ├── create.blade.php
│   │       │   │   │       │   │   ├── edit.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── sources
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── tags
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── types
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── users
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── warehouses
│   │       │   │   │       │   │   ├── create.blade.php
│   │       │   │   │       │   │   ├── edit.blade.php
│   │       │   │   │       │   │   ├── index.blade.php
│   │       │   │   │       │   │   ├── view
│   │       │   │   │       │   │   │   ├── contact-information.blade.php
│   │       │   │   │       │   │   │   ├── general-information.blade.php
│   │       │   │   │       │   │   │   └── locations.blade.php
│   │       │   │   │       │   │   └── view.blade.php
│   │       │   │   │       │   ├── web-forms
│   │       │   │   │       │   │   ├── create.blade.php
│   │       │   │   │       │   │   ├── edit.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   ├── webhook
│   │       │   │   │       │   │   ├── create.blade.php
│   │       │   │   │       │   │   ├── edit.blade.php
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   └── workflows
│   │       │   │   │       │       ├── create.blade.php
│   │       │   │   │       │       ├── edit.blade.php
│   │       │   │   │       │       └── index.blade.php
│   │       │   │   │       └── user
│   │       │   │   │           └── account
│   │       │   │   │               └── edit.blade.php
│   │       │   │   ├── Routes
│   │       │   │   │   ├── Admin
│   │       │   │   │   │   ├── activities-routes.php
│   │       │   │   │   │   ├── auth-routes.php
│   │       │   │   │   │   ├── configuration-routes.php
│   │       │   │   │   │   ├── contacts-routes.php
│   │       │   │   │   │   ├── leads-routes.php
│   │       │   │   │   │   ├── mail-routes.php
│   │       │   │   │   │   ├── products-routes.php
│   │       │   │   │   │   ├── quote-routes.php
│   │       │   │   │   │   ├── rest-routes.php
│   │       │   │   │   │   ├── settings-routes.php
│   │       │   │   │   │   └── web.php
│   │       │   │   │   └── Front
│   │       │   │   │       └── web.php
│   │       │   │   └── Traits
│   │       │   │       └── ProvideDropdownOptions.php
│   │       │   ├── tailwind.config.js
│   │       │   ├── tests
│   │       │   │   └── e2e-pw
│   │       │   │       ├── data
│   │       │   │       │   └── images
│   │       │   │       │       ├── 10.webp
│   │       │   │       │       ├── 11.webp
│   │       │   │       │       ├── 12.webp
│   │       │   │       │       ├── 1.webp
│   │       │   │       │       ├── 2.webp
│   │       │   │       │       ├── 3.webp
│   │       │   │       │       ├── 4.webp
│   │       │   │       │       ├── 5.webp
│   │       │   │       │       ├── 6.webp
│   │       │   │       │       ├── 7.webp
│   │       │   │       │       ├── 8.webp
│   │       │   │       │       └── 9.webp
│   │       │   │       ├── playwright.config.ts
│   │       │   │       ├── setup.ts
│   │       │   │       ├── tests
│   │       │   │       │   ├── auth.spec.ts
│   │       │   │       │   ├── contacts
│   │       │   │       │   │   ├── organization.spec.ts
│   │       │   │       │   │   └── person.spec.ts
│   │       │   │       │   ├── lang
│   │       │   │       │   │   └── lang.spec.ts
│   │       │   │       │   ├── lead.spec.ts
│   │       │   │       │   ├── mail
│   │       │   │       │   │   ├── draft.spec.ts
│   │       │   │       │   │   ├── inbox.spec.ts
│   │       │   │       │   │   ├── outbox.spec.ts
│   │       │   │       │   │   ├── sent.spec.ts
│   │       │   │       │   │   └── trash.spec.ts
│   │       │   │       │   ├── product.spec.ts
│   │       │   │       │   ├── quotes.spec.ts
│   │       │   │       │   └── settings
│   │       │   │       │       ├── automation
│   │       │   │       │       │   └── events.spec.ts
│   │       │   │       │       ├── lead
│   │       │   │       │       │   └── types.spec.ts
│   │       │   │       │       ├── user
│   │       │   │       │       │   ├── groups.spec.ts
│   │       │   │       │       │   └── users.spec.ts
│   │       │   │       │       └── warehouses
│   │       │   │       │           └── warehouse.spec.ts
│   │       │   │       └── utils
│   │       │   │           ├── components.ts
│   │       │   │           └── faker.ts
│   │       │   └── vite.config.js
│   │       ├── Attribute
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Config
│   │       │       │   └── attribute_lookups.php
│   │       │       ├── Contracts
│   │       │       │   ├── AttributeOption.php
│   │       │       │   ├── Attribute.php
│   │       │       │   └── AttributeValue.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_04_02_080709_create_attributes_table.php
│   │       │       │       ├── 2021_04_02_080837_create_attribute_options_table.php
│   │       │       │       ├── 2021_04_06_122751_create_attribute_values_table.php
│   │       │       │       └── 2025_07_02_191710_alter_attribute_values_table.php
│   │       │       ├── Models
│   │       │       │   ├── AttributeOption.php
│   │       │       │   ├── AttributeOptionProxy.php
│   │       │       │   ├── Attribute.php
│   │       │       │   ├── AttributeProxy.php
│   │       │       │   ├── AttributeValue.php
│   │       │       │   └── AttributeValueProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── AttributeServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       ├── Repositories
│   │       │       │   ├── AttributeOptionRepository.php
│   │       │       │   ├── AttributeRepository.php
│   │       │       │   └── AttributeValueRepository.php
│   │       │       └── Traits
│   │       │           └── CustomAttribute.php
│   │       ├── Automation
│   │       │   └── src
│   │       │       ├── Config
│   │       │       │   └── workflows.php
│   │       │       ├── Contracts
│   │       │       │   ├── Webhook.php
│   │       │       │   └── Workflow.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_08_26_133538_create_workflows_table.php
│   │       │       │       └── 2024_07_24_150821_create_webhooks_table.php
│   │       │       ├── Helpers
│   │       │       │   ├── Entity
│   │       │       │   │   ├── AbstractEntity.php
│   │       │       │   │   ├── Activity.php
│   │       │       │   │   ├── Lead.php
│   │       │       │   │   ├── Person.php
│   │       │       │   │   └── Quote.php
│   │       │       │   ├── Entity.php
│   │       │       │   └── Validator.php
│   │       │       ├── Listeners
│   │       │       │   └── Entity.php
│   │       │       ├── Models
│   │       │       │   ├── Webhook.php
│   │       │       │   ├── WebhookProxy.php
│   │       │       │   ├── Workflow.php
│   │       │       │   └── WorkflowProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── ModuleServiceProvider.php
│   │       │       │   └── WorkflowServiceProvider.php
│   │       │       ├── Repositories
│   │       │       │   ├── WebhookRepository.php
│   │       │       │   └── WorkflowRepository.php
│   │       │       └── Services
│   │       │           └── WebhookService.php
│   │       ├── Contact
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   ├── Organization.php
│   │       │       │   └── Person.php
│   │       │       ├── Database
│   │       │       │   ├── Factories
│   │       │       │   │   └── PersonFactory.php
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_04_09_051326_create_organizations_table.php
│   │       │       │       ├── 2021_04_09_065617_create_persons_table.php
│   │       │       │       ├── 2021_09_22_194103_add_unique_index_to_name_in_organizations_table.php
│   │       │       │       ├── 2024_07_31_092951_add_job_title_in_persons_table.php
│   │       │       │       ├── 2024_08_06_145943_create_person_tags_table.php
│   │       │       │       ├── 2024_08_06_161212_create_person_activities_table.php
│   │       │       │       ├── 2024_08_14_102116_add_user_id_column_in_persons_table.php
│   │       │       │       ├── 2024_08_14_102136_add_user_id_column_in_organizations_table.php
│   │       │       │       ├── 2024_09_09_112201_add_unique_id_to_person_table.php
│   │       │       │       └── 2025_03_19_132236_update_organization_id_column_in_persons_table.php
│   │       │       ├── Models
│   │       │       │   ├── Organization.php
│   │       │       │   ├── OrganizationProxy.php
│   │       │       │   ├── Person.php
│   │       │       │   └── PersonProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── ContactServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       └── Repositories
│   │       │           ├── OrganizationRepository.php
│   │       │           └── PersonRepository.php
│   │       ├── Core
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Acl
│   │       │       │   └── AclItem.php
│   │       │       ├── Acl.php
│   │       │       ├── Config
│   │       │       │   ├── concord.php
│   │       │       │   ├── cors.php
│   │       │       │   └── sanctum.php
│   │       │       ├── Console
│   │       │       │   └── Commands
│   │       │       │       └── Version.php
│   │       │       ├── Contracts
│   │       │       │   ├── CoreConfig.php
│   │       │       │   ├── Country.php
│   │       │       │   ├── CountryState.php
│   │       │       │   └── Validations
│   │       │       │       ├── Code.php
│   │       │       │       └── Decimal.php
│   │       │       ├── Core.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_03_12_060658_create_core_config_table.php
│   │       │       │       ├── 2021_04_12_173232_create_countries_table.php
│   │       │       │       ├── 2021_04_12_173344_create_country_states_table.php
│   │       │       │       └── 2025_01_29_133500_update_text_column_type_in_core_config_table.php
│   │       │       ├── Eloquent
│   │       │       │   ├── Repository.php
│   │       │       │   └── TranslatableModel.php
│   │       │       ├── Exceptions
│   │       │       │   └── ViterNotFound.php
│   │       │       ├── Facades
│   │       │       │   ├── Acl.php
│   │       │       │   ├── Core.php
│   │       │       │   ├── Menu.php
│   │       │       │   └── SystemConfig.php
│   │       │       ├── Helpers
│   │       │       │   └── Helper.php
│   │       │       ├── Http
│   │       │       │   ├── Controllers
│   │       │       │   │   └── CoreController.php
│   │       │       │   └── helpers.php
│   │       │       ├── Menu
│   │       │       │   └── MenuItem.php
│   │       │       ├── Menu.php
│   │       │       ├── Models
│   │       │       │   ├── CoreConfig.php
│   │       │       │   ├── CoreConfigProxy.php
│   │       │       │   ├── Country.php
│   │       │       │   ├── CountryProxy.php
│   │       │       │   ├── CountryState.php
│   │       │       │   └── CountryStateProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── BaseModuleServiceProvider.php
│   │       │       │   ├── CoreServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       ├── Repositories
│   │       │       │   ├── CoreConfigRepository.php
│   │       │       │   ├── CountryRepository.php
│   │       │       │   └── CountryStateRepository.php
│   │       │       ├── Resources
│   │       │       │   └── lang
│   │       │       │       ├── ar
│   │       │       │       │   └── app.php
│   │       │       │       ├── en
│   │       │       │       │   └── app.php
│   │       │       │       ├── es
│   │       │       │       │   └── app.php
│   │       │       │       ├── fa
│   │       │       │       │   └── app.php
│   │       │       │       ├── pt_BR
│   │       │       │       │   └── app.php
│   │       │       │       ├── tr
│   │       │       │       │   └── app.php
│   │       │       │       └── vi
│   │       │       │           └── app.php
│   │       │       ├── SystemConfig
│   │       │       │   ├── ItemField.php
│   │       │       │   └── Item.php
│   │       │       ├── SystemConfig.php
│   │       │       ├── Traits
│   │       │       │   ├── PDFHandler.php
│   │       │       │   └── Sanitizer.php
│   │       │       ├── ViewRenderEventManager.php
│   │       │       └── Vite.php
│   │       ├── DataGrid
│   │       │   └── src
│   │       │       ├── Action.php
│   │       │       ├── Column.php
│   │       │       ├── ColumnTypes
│   │       │       │   ├── Aggregate.php
│   │       │       │   ├── Boolean.php
│   │       │       │   ├── Date.php
│   │       │       │   ├── Datetime.php
│   │       │       │   ├── Decimal.php
│   │       │       │   ├── Integer.php
│   │       │       │   └── Text.php
│   │       │       ├── Contracts
│   │       │       │   └── SavedFilter.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       └── 2024_05_10_152848_create_saved_filters_table.php
│   │       │       ├── DataGrid.php
│   │       │       ├── Enums
│   │       │       │   ├── ColumnTypeEnum.php
│   │       │       │   ├── DateRangeOptionEnum.php
│   │       │       │   └── FilterTypeEnum.php
│   │       │       ├── Exceptions
│   │       │       │   ├── InvalidColumnException.php
│   │       │       │   ├── InvalidColumnTypeException.php
│   │       │       │   └── InvalidDataGridException.php
│   │       │       ├── Exports
│   │       │       │   └── DataGridExport.php
│   │       │       ├── Http
│   │       │       │   └── helpers.php
│   │       │       ├── MassAction.php
│   │       │       ├── Models
│   │       │       │   ├── SavedFilter.php
│   │       │       │   └── SavedFilterProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── DataGridServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       └── Repositories
│   │       │           └── SavedFilterRepository.php
│   │       ├── DataTransfer
│   │       │   └── src
│   │       │       ├── Config
│   │       │       │   └── importers.php
│   │       │       ├── Contracts
│   │       │       │   ├── ImportBatch.php
│   │       │       │   └── Import.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2024_01_11_154640_create_imports_table.php
│   │       │       │       └── 2024_01_11_154741_create_import_batches_table.php
│   │       │       ├── Helpers
│   │       │       │   ├── Error.php
│   │       │       │   ├── Importers
│   │       │       │   │   ├── AbstractImporter.php
│   │       │       │   │   ├── Leads
│   │       │       │   │   │   ├── Importer.php
│   │       │       │   │   │   └── Storage.php
│   │       │       │   │   ├── Persons
│   │       │       │   │   │   ├── Importer.php
│   │       │       │   │   │   └── Storage.php
│   │       │       │   │   └── Products
│   │       │       │   │       ├── Importer.php
│   │       │       │   │       └── SKUStorage.php
│   │       │       │   ├── Import.php
│   │       │       │   └── Sources
│   │       │       │       ├── AbstractSource.php
│   │       │       │       ├── CSV.php
│   │       │       │       └── Excel.php
│   │       │       ├── Jobs
│   │       │       │   └── Import
│   │       │       │       ├── Completed.php
│   │       │       │       ├── ImportBatch.php
│   │       │       │       ├── IndexBatch.php
│   │       │       │       ├── Indexing.php
│   │       │       │       ├── LinkBatch.php
│   │       │       │       └── Linking.php
│   │       │       ├── Models
│   │       │       │   ├── ImportBatch.php
│   │       │       │   ├── ImportBatchProxy.php
│   │       │       │   ├── Import.php
│   │       │       │   └── ImportProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── DataTransferServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       ├── Repositories
│   │       │       │   ├── ImportBatchRepository.php
│   │       │       │   └── ImportRepository.php
│   │       │       └── Resources
│   │       │           └── lang
│   │       │               ├── ar
│   │       │               │   └── ar.php
│   │       │               ├── en
│   │       │               │   └── app.php
│   │       │               ├── es
│   │       │               │   └── app.php
│   │       │               ├── fa
│   │       │               │   └── app.php
│   │       │               ├── pt_BR
│   │       │               │   └── app.php
│   │       │               └── tr
│   │       │                   └── app.php
│   │       ├── Email
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Console
│   │       │       │   └── Commands
│   │       │       │       └── ProcessInboundEmails.php
│   │       │       ├── Contracts
│   │       │       │   ├── Attachment.php
│   │       │       │   └── Email.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_05_24_075618_create_emails_table.php
│   │       │       │       ├── 2021_05_25_072700_create_email_attachments_table.php
│   │       │       │       └── 2024_08_27_091619_create_email_tags_table.php
│   │       │       ├── Enums
│   │       │       │   └── SupportedFolderEnum.php
│   │       │       ├── Helpers
│   │       │       │   ├── Attachment.php
│   │       │       │   ├── Charset.php
│   │       │       │   ├── Contracts
│   │       │       │   │   └── CharsetManager.php
│   │       │       │   ├── HtmlFilter.php
│   │       │       │   └── Parser.php
│   │       │       ├── InboundEmailProcessor
│   │       │       │   ├── Contracts
│   │       │       │   │   └── InboundEmailProcessor.php
│   │       │       │   ├── SendgridEmailProcessor.php
│   │       │       │   └── WebklexImapEmailProcessor.php
│   │       │       ├── Mails
│   │       │       │   └── Email.php
│   │       │       ├── Models
│   │       │       │   ├── Attachment.php
│   │       │       │   ├── AttachmentProxy.php
│   │       │       │   ├── Email.php
│   │       │       │   └── EmailProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── EmailServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       └── Repositories
│   │       │           ├── AttachmentRepository.php
│   │       │           └── EmailRepository.php
│   │       ├── EmailTemplate
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   └── EmailTemplate.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_09_03_172713_create_email_templates_table.php
│   │       │       │       └── 2025_07_09_133553_alter_email_templates_table.php
│   │       │       ├── Models
│   │       │       │   ├── EmailTemplate.php
│   │       │       │   └── EmailTemplateProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── EmailTemplateServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       └── Repositories
│   │       │           └── EmailTemplateRepository.php
│   │       ├── Installer
│   │       │   ├── composer.json
│   │       │   ├── package.json
│   │       │   ├── postcss.config.js
│   │       │   ├── src
│   │       │   │   ├── Console
│   │       │   │   │   └── Commands
│   │       │   │   │       └── Installer.php
│   │       │   │   ├── Data
│   │       │   │   │   ├── countries.json
│   │       │   │   │   └── states.json
│   │       │   │   ├── Database
│   │       │   │   │   ├── Migrations
│   │       │   │   │   │   ├── 2024_06_24_174241_insert_warehouse_attributes_in_attributes_table.php
│   │       │   │   │   │   ├── 2024_07_31_093603_add_organization_sales_owner_attribute_in_attributes_table.php
│   │       │   │   │   │   ├── 2024_07_31_093605_add_person_job_title_attribute_in_attributes_table.php
│   │       │   │   │   │   ├── 2024_07_31_093605_add_person_sales_owner_attribute_in_attributes_table.php
│   │       │   │   │   │   └── 2024_08_21_153011_add_leads_stage_and_pipeline_attributes.php
│   │       │   │   │   └── Seeders
│   │       │   │   │       ├── Attribute
│   │       │   │   │       │   ├── AttributeSeeder.php
│   │       │   │   │       │   └── DatabaseSeeder.php
│   │       │   │   │       ├── Core
│   │       │   │   │       │   ├── CountriesSeeder.php
│   │       │   │   │       │   ├── DatabaseSeeder.php
│   │       │   │   │       │   └── StatesSeeder.php
│   │       │   │   │       ├── DatabaseSeeder.php
│   │       │   │   │       ├── EmailTemplate
│   │       │   │   │       │   ├── DatabaseSeeder.php
│   │       │   │   │       │   └── EmailTemplateSeeder.php
│   │       │   │   │       ├── Lead
│   │       │   │   │       │   ├── DatabaseSeeder.php
│   │       │   │   │       │   ├── PipelineSeeder.php
│   │       │   │   │       │   ├── SourceSeeder.php
│   │       │   │   │       │   └── TypeSeeder.php
│   │       │   │   │       ├── User
│   │       │   │   │       │   ├── DatabaseSeeder.php
│   │       │   │   │       │   ├── RoleSeeder.php
│   │       │   │   │       │   └── UserSeeder.php
│   │       │   │   │       └── Workflow
│   │       │   │   │           ├── DatabaseSeeder.php
│   │       │   │   │           └── WorkflowSeeder.php
│   │       │   │   ├── Events
│   │       │   │   │   └── ComposerEvents.php
│   │       │   │   ├── Helpers
│   │       │   │   │   ├── DatabaseManager.php
│   │       │   │   │   ├── EnvironmentManager.php
│   │       │   │   │   └── ServerRequirements.php
│   │       │   │   ├── Http
│   │       │   │   │   ├── Controllers
│   │       │   │   │   │   ├── Controller.php
│   │       │   │   │   │   ├── ImageCacheController.php
│   │       │   │   │   │   └── InstallerController.php
│   │       │   │   │   └── Middleware
│   │       │   │   │       ├── CanInstall.php
│   │       │   │   │       └── Locale.php
│   │       │   │   ├── Listeners
│   │       │   │   │   └── Installer.php
│   │       │   │   ├── Providers
│   │       │   │   │   └── InstallerServiceProvider.php
│   │       │   │   ├── Resources
│   │       │   │   │   ├── assets
│   │       │   │   │   │   ├── css
│   │       │   │   │   │   │   └── app.css
│   │       │   │   │   │   ├── fonts
│   │       │   │   │   │   │   ├── icomoon.eot
│   │       │   │   │   │   │   ├── icomoon.svg
│   │       │   │   │   │   │   ├── icomoon.ttf
│   │       │   │   │   │   │   └── icomoon.woff
│   │       │   │   │   │   ├── images
│   │       │   │   │   │   │   ├── favicon.ico
│   │       │   │   │   │   │   ├── krayin-logo.svg
│   │       │   │   │   │   │   └── spinner.svg
│   │       │   │   │   │   └── js
│   │       │   │   │   │       ├── app.js
│   │       │   │   │   │       └── plugins
│   │       │   │   │   │           └── axios.js
│   │       │   │   │   ├── lang
│   │       │   │   │   │   ├── ar
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── en
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── es
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── fa
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── pt_BR
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   ├── tr
│   │       │   │   │   │   │   └── app.php
│   │       │   │   │   │   └── vi
│   │       │   │   │   │       └── app.php
│   │       │   │   │   └── views
│   │       │   │   │       ├── components
│   │       │   │   │       │   ├── button
│   │       │   │   │       │   │   └── index.blade.php
│   │       │   │   │       │   └── form
│   │       │   │   │       │       ├── control-group
│   │       │   │   │       │       │   ├── control.blade.php
│   │       │   │   │       │       │   ├── error.blade.php
│   │       │   │   │       │       │   ├── index.blade.php
│   │       │   │   │       │       │   └── label.blade.php
│   │       │   │   │       │       └── index.blade.php
│   │       │   │   │       └── installer
│   │       │   │   │           └── index.blade.php
│   │       │   │   ├── Routes
│   │       │   │   │   └── web.php
│   │       │   │   └── Templates
│   │       │   │       └── on-boarding.php
│   │       │   ├── tailwind.config.js
│   │       │   └── vite.config.js
│   │       ├── Lead
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   ├── Lead.php
│   │       │       │   ├── Pipeline.php
│   │       │       │   ├── Product.php
│   │       │       │   ├── Source.php
│   │       │       │   ├── Stage.php
│   │       │       │   └── Type.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_04_21_172825_create_lead_sources_table.php
│   │       │       │       ├── 2021_04_21_172847_create_lead_types_table.php
│   │       │       │       ├── 2021_04_22_153258_create_lead_stages_table.php
│   │       │       │       ├── 2021_04_22_155706_create_lead_pipelines_table.php
│   │       │       │       ├── 2021_04_22_155838_create_lead_pipeline_stages_table.php
│   │       │       │       ├── 2021_04_22_164215_create_leads_table.php
│   │       │       │       ├── 2021_04_22_171805_create_lead_products_table.php
│   │       │       │       ├── 2021_05_12_150329_create_lead_activities_table.php
│   │       │       │       ├── 2021_05_20_141240_create_lead_tags_table.php
│   │       │       │       ├── 2021_07_02_201822_create_lead_quotes_table.php
│   │       │       │       ├── 2021_09_23_221138_add_column_expected_close_date_in_leads_table.php
│   │       │       │       ├── 2021_09_30_135857_add_column_rotten_days_in_lead_pipelines_table.php
│   │       │       │       ├── 2021_09_30_154222_alter_lead_pipeline_stages_table.php
│   │       │       │       ├── 2021_09_30_161722_alter_leads_table.php
│   │       │       │       ├── 2021_09_30_183825_change_user_id_to_nullable_in_leads_table.php
│   │       │       │       ├── 2021_11_11_180804_change_lead_pipeline_stage_id_constraint_in_leads_table.php
│   │       │       │       ├── 2024_11_29_120302_modify_foreign_keys_in_leads_table.php
│   │       │       │       └── 2025_07_01_133612_alter_lead_pipelines_table.php
│   │       │       ├── Helpers
│   │       │       │   └── MagicAI.php
│   │       │       ├── Models
│   │       │       │   ├── Lead.php
│   │       │       │   ├── LeadProxy.php
│   │       │       │   ├── Pipeline.php
│   │       │       │   ├── PipelineProxy.php
│   │       │       │   ├── Product.php
│   │       │       │   ├── ProductProxy.php
│   │       │       │   ├── Source.php
│   │       │       │   ├── SourceProxy.php
│   │       │       │   ├── Stage.php
│   │       │       │   ├── StageProxy.php
│   │       │       │   ├── Type.php
│   │       │       │   └── TypeProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── LeadServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       ├── Repositories
│   │       │       │   ├── LeadRepository.php
│   │       │       │   ├── PipelineRepository.php
│   │       │       │   ├── ProductRepository.php
│   │       │       │   ├── SourceRepository.php
│   │       │       │   ├── StageRepository.php
│   │       │       │   └── TypeRepository.php
│   │       │       └── Services
│   │       │           └── MagicAIService.php
│   │       ├── Marketing
│   │       │   └── src
│   │       │       ├── Console
│   │       │       │   └── Commands
│   │       │       │       └── CampaignCommand.php
│   │       │       ├── Contracts
│   │       │       │   ├── Campaign.php
│   │       │       │   └── Event.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2024_10_29_044744_create_marketing_events_table.php
│   │       │       │       └── 2024_11_04_122500_create_marketing_campaigns_table.php
│   │       │       ├── Helpers
│   │       │       │   └── Campaign.php
│   │       │       ├── Mail
│   │       │       │   └── CampaignMail.php
│   │       │       ├── Models
│   │       │       │   ├── Campaign.php
│   │       │       │   ├── CampaignProxy.php
│   │       │       │   ├── Event.php
│   │       │       │   └── EventProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── MarketingServiceProvider.php
│   │       │       │   └── ModuleServiceProvider.php
│   │       │       └── Repositories
│   │       │           ├── CampaignRepository.php
│   │       │           └── EventRepository.php
│   │       ├── Product
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   ├── ProductInventory.php
│   │       │       │   └── Product.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_04_09_065617_create_products_table.php
│   │       │       │       ├── 2024_06_28_154009_create_product_inventories_table.php
│   │       │       │       ├── 2024_08_10_150329_create_product_activities_table.php
│   │       │       │       ├── 2024_08_10_150340_create_product_tags_table.php
│   │       │       │       └── 2024_09_06_065808_alter_product_inventories_table.php
│   │       │       ├── Models
│   │       │       │   ├── ProductInventory.php
│   │       │       │   ├── ProductInventoryProxy.php
│   │       │       │   ├── Product.php
│   │       │       │   └── ProductProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── ModuleServiceProvider.php
│   │       │       │   └── ProductServiceProvider.php
│   │       │       └── Repositories
│   │       │           ├── ProductInventoryRepository.php
│   │       │           └── ProductRepository.php
│   │       ├── Quote
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   ├── QuoteItem.php
│   │       │       │   └── Quote.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_07_01_230345_create_quotes_table.php
│   │       │       │       └── 2021_07_01_231317_create_quote_items_table.php
│   │       │       ├── Models
│   │       │       │   ├── QuoteItem.php
│   │       │       │   ├── QuoteItemProxy.php
│   │       │       │   ├── Quote.php
│   │       │       │   └── QuoteProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── ModuleServiceProvider.php
│   │       │       │   └── QuoteServiceProvider.php
│   │       │       └── Repositories
│   │       │           ├── QuoteItemRepository.php
│   │       │           └── QuoteRepository.php
│   │       ├── Tag
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   └── Tag.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       └── 2021_05_20_141230_create_tags_table.php
│   │       │       ├── Models
│   │       │       │   ├── Tag.php
│   │       │       │   └── TagProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── ModuleServiceProvider.php
│   │       │       │   └── TagServiceProvider.php
│   │       │       └── Repositories
│   │       │           └── TagRepository.php
│   │       ├── User
│   │       │   ├── composer.json
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   ├── Group.php
│   │       │       │   ├── Role.php
│   │       │       │   └── User.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2021_03_12_074578_create_groups_table.php
│   │       │       │       ├── 2021_03_12_074597_create_roles_table.php
│   │       │       │       ├── 2021_03_12_074857_create_users_table.php
│   │       │       │       ├── 2021_03_12_074867_create_user_groups_table.php
│   │       │       │       ├── 2021_03_12_074957_create_user_password_resets_table.php
│   │       │       │       ├── 2021_09_22_194622_add_unique_index_to_name_in_groups_table.php
│   │       │       │       └── 2021_11_12_171510_add_image_column_in_users_table.php
│   │       │       ├── Models
│   │       │       │   ├── Group.php
│   │       │       │   ├── GroupProxy.php
│   │       │       │   ├── Role.php
│   │       │       │   ├── RoleProxy.php
│   │       │       │   ├── User.php
│   │       │       │   └── UserProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── ModuleServiceProvider.php
│   │       │       │   └── UserServiceProvider.php
│   │       │       └── Repositories
│   │       │           ├── GroupRepository.php
│   │       │           ├── RoleRepository.php
│   │       │           └── UserRepository.php
│   │       ├── Warehouse
│   │       │   └── src
│   │       │       ├── Contracts
│   │       │       │   ├── Location.php
│   │       │       │   └── Warehouse.php
│   │       │       ├── Database
│   │       │       │   └── Migrations
│   │       │       │       ├── 2024_06_21_160707_create_warehouses_table.php
│   │       │       │       ├── 2024_06_21_160735_create_warehouse_locations_table.php
│   │       │       │       ├── 2024_08_10_100329_create_warehouse_activities_table.php
│   │       │       │       └── 2024_08_10_100340_create_warehouse_tags_table.php
│   │       │       ├── Models
│   │       │       │   ├── Location.php
│   │       │       │   ├── LocationProxy.php
│   │       │       │   ├── Warehouse.php
│   │       │       │   └── WarehouseProxy.php
│   │       │       ├── Providers
│   │       │       │   ├── ModuleServiceProvider.php
│   │       │       │   └── WarehouseServiceProvider.php
│   │       │       └── Repositories
│   │       │           ├── LocationRepository.php
│   │       │           └── WarehouseRepository.php
│   │       └── WebForm
│   │           ├── composer.json
│   │           ├── package.json
│   │           ├── postcss.config.js
│   │           ├── src
│   │           │   ├── Config
│   │           │   │   ├── acl.php
│   │           │   │   └── menu.php
│   │           │   ├── Contracts
│   │           │   │   ├── WebFormAttribute.php
│   │           │   │   └── WebForm.php
│   │           │   ├── Database
│   │           │   │   └── Migrations
│   │           │   │       ├── 2021_12_14_213049_create_web_forms_table.php
│   │           │   │       └── 2021_12_14_214923_create_web_form_attributes_table.php
│   │           │   ├── DataGrids
│   │           │   │   └── WebFormDataGrid.php
│   │           │   ├── Http
│   │           │   │   ├── Controllers
│   │           │   │   │   ├── Controller.php
│   │           │   │   │   └── WebFormController.php
│   │           │   │   └── Requests
│   │           │   │       └── WebForm.php
│   │           │   ├── Models
│   │           │   │   ├── WebFormAttribute.php
│   │           │   │   ├── WebFormAttributeProxy.php
│   │           │   │   ├── WebForm.php
│   │           │   │   └── WebFormProxy.php
│   │           │   ├── Providers
│   │           │   │   ├── ModuleServiceProvider.php
│   │           │   │   └── WebFormServiceProvider.php
│   │           │   ├── Repositories
│   │           │   │   ├── WebFormAttributeRepository.php
│   │           │   │   └── WebFormRepository.php
│   │           │   ├── Resources
│   │           │   │   ├── assets
│   │           │   │   │   ├── css
│   │           │   │   │   │   └── app.css
│   │           │   │   │   ├── fonts
│   │           │   │   │   │   └── icomoon.woff
│   │           │   │   │   ├── js
│   │           │   │   │   │   ├── app.js
│   │           │   │   │   │   └── plugins
│   │           │   │   │   │       ├── axios.js
│   │           │   │   │   │       ├── emitter.js
│   │           │   │   │   │       ├── flatpickr.js
│   │           │   │   │   │       └── vee-validate.js
│   │           │   │   │   └── locales
│   │           │   │   │       ├── hi_IN.json
│   │           │   │   │       └── sin.json
│   │           │   │   ├── lang
│   │           │   │   │   ├── ar
│   │           │   │   │   │   └── app.php
│   │           │   │   │   ├── en
│   │           │   │   │   │   └── app.php
│   │           │   │   │   ├── es
│   │           │   │   │   │   └── app.php
│   │           │   │   │   ├── fa
│   │           │   │   │   │   └── app.php
│   │           │   │   │   ├── pt_BR
│   │           │   │   │   │   └── app.php
│   │           │   │   │   ├── tr
│   │           │   │   │   │   └── app.php
│   │           │   │   │   └── vi
│   │           │   │   │       └── app.php
│   │           │   │   └── views
│   │           │   │       ├── components
│   │           │   │       │   ├── button
│   │           │   │       │   │   └── index.blade.php
│   │           │   │       │   ├── flash-group
│   │           │   │       │   │   ├── index.blade.php
│   │           │   │       │   │   └── item.blade.php
│   │           │   │       │   ├── form
│   │           │   │       │   │   ├── control-group
│   │           │   │       │   │   │   ├── control.blade.php
│   │           │   │       │   │   │   ├── error.blade.php
│   │           │   │       │   │   │   ├── index.blade.php
│   │           │   │       │   │   │   └── label.blade.php
│   │           │   │       │   │   └── index.blade.php
│   │           │   │       │   ├── layouts
│   │           │   │       │   │   └── index.blade.php
│   │           │   │       │   └── spinner
│   │           │   │       │       └── index.blade.php
│   │           │   │       └── settings
│   │           │   │           └── web-forms
│   │           │   │               ├── controls.blade.php
│   │           │   │               ├── embed.blade.php
│   │           │   │               └── preview.blade.php
│   │           │   ├── Routes
│   │           │   │   └── routes.php
│   │           │   └── Rules
│   │           │       └── PhoneNumber.php
│   │           ├── tailwind.config.js
│   │           └── vite.config.js
│   ├── phpunit.xml
│   ├── pint.json
│   ├── public
│   │   ├── admin
│   │   │   └── build
│   │   │       ├── assets
│   │   │       │   ├── activities-DpB2XKqX.svg
│   │   │       │   ├── app-B1rBjssc.js
│   │   │       │   ├── app-C2Wq9G4i.css
│   │   │       │   ├── app-xcMAMgaV.css
│   │   │       │   ├── ar.es-CfdTYgcp.js
│   │   │       │   ├── bg.es-Ce0T19Qg.js
│   │   │       │   ├── bn.es-iWyup8_3.js
│   │   │       │   ├── bs.es-Cz58hpHx.js
│   │   │       │   ├── ca.es-CujU75Im.js
│   │   │       │   ├── calls-BU_UfDax.svg
│   │   │       │   ├── chart-D1u1Dgzh.js
│   │   │       │   ├── corner-clip-CRLTKrCT.svg
│   │   │       │   ├── cs.es-BHhRbaip.js
│   │   │       │   ├── da.es-DglD7fV2.js
│   │   │       │   ├── dark-corner-clip-Deux0RQO.svg
│   │   │       │   ├── dark-logo-Dnw3cpYj.svg
│   │   │       │   ├── de.es-D_4ZyLTN.js
│   │   │       │   ├── default-DBulZ5O_.svg
│   │   │       │   ├── description-BwifbkWG.svg
│   │   │       │   ├── drag-and-drop.es-JkAdgoaa.js
│   │   │       │   ├── el.es-BC26X5xm.js
│   │   │       │   ├── emails-D_qEBj20.svg
│   │   │       │   ├── en.es-DDTuV2po.js
│   │   │       │   ├── error-ClRu8L1K.svg
│   │   │       │   ├── es.es-BvvfjN-O.js
│   │   │       │   ├── et.es-C0rF9HtR.js
│   │   │       │   ├── fa.es-CibKJjgz.js
│   │   │       │   ├── favicon-BtbgZBji.ico
│   │   │       │   ├── fi.es-B0Iy6aas.js
│   │   │       │   ├── files-Xm-jQ6Fi.svg
│   │   │       │   ├── fr.es-B7WXlprl.js
│   │   │       │   ├── he.es-K9Fk8xhK.js
│   │   │       │   ├── hr.es-ef5bxYFj.js
│   │   │       │   ├── hu.es-nZ65MV0n.js
│   │   │       │   ├── icomoon-BbY1GX-d.woff
│   │   │       │   ├── id.es-CzHAK-XV.js
│   │   │       │   ├── is.es-Dz07gBgt.js
│   │   │       │   ├── it.es-CquQA5xx.js
│   │   │       │   ├── ja.es-D6pL26k_.js
│   │   │       │   ├── ka.es-Cb9X-eNS.js
│   │   │       │   ├── ko.es-CTpJlj0A.js
│   │   │       │   ├── logo-Bjh7YAuF.svg
│   │   │       │   ├── lt.es-vqgjGyMx.js
│   │   │       │   ├── lunches-BHeSbGQ3.svg
│   │   │       │   ├── meetings-Cwj897qL.svg
│   │   │       │   ├── mn.es-YZet1as4.js
│   │   │       │   ├── mobile-dark-logo-COPgCide.svg
│   │   │       │   ├── mobile-light-logo-CjoobCkl.svg
│   │   │       │   ├── nl.es-COp8PWbT.js
│   │   │       │   ├── no.es-_2m-F2FS.js
│   │   │       │   ├── notes-BdIILF0F.svg
│   │   │       │   ├── organizations-aUdNng-O.svg
│   │   │       │   ├── pipedrive-Dk_Mji0J.svg
│   │   │       │   ├── plans-DIcOmGwv.svg
│   │   │       │   ├── pl.es-jjNeJM5X.js
│   │   │       │   ├── products-zDh6UFtz.svg
│   │   │       │   ├── pt-br.es-D8ojES2d.js
│   │   │       │   ├── pt-pt.es-D8ojES2d.js
│   │   │       │   ├── quotes-0H7ZCVr6.svg
│   │   │       │   ├── ro.es-B6_ATXom.js
│   │   │       │   ├── ru.es-BGEpmv_x.js
│   │   │       │   ├── sk.es-V3h-1af8.js
│   │   │       │   ├── sl.es-mZjm0YDT.js
│   │   │       │   ├── sq.es-_6B4UQXy.js
│   │   │       │   ├── sr.es-BmdOpTOG.js
│   │   │       │   ├── sv.es-LwrPWbzy.js
│   │   │       │   ├── tr.es-CS80t-Rq.js
│   │   │       │   ├── uk.es-BVYlda65.js
│   │   │       │   ├── users-6trD5il1.svg
│   │   │       │   ├── vi.es-B5CIRCK5.js
│   │   │       │   ├── zh-cn.es-DKz-yscG.js
│   │   │       │   └── zh-hk.es-CFZP5Cvd.js
│   │   │       └── manifest.json
│   │   ├── build
│   │   │   ├── assets
│   │   │   │   ├── app-CAiCLEjY.js
│   │   │   │   └── app-l0sNRNKZ.js
│   │   │   └── manifest.json
│   │   ├── fonts
│   │   │   ├── Hind-Bold.ttf
│   │   │   ├── Hind-Regular.ttf
│   │   │   ├── NotoSansBengali-Bold.ttf
│   │   │   ├── NotoSansBengali-Regular.ttf
│   │   │   ├── NotoSansJP-Bold.ttf
│   │   │   ├── NotoSansJP-Regular.ttf
│   │   │   ├── NotoSansSC-Bold.ttf
│   │   │   ├── NotoSansSC-Regular.ttf
│   │   │   ├── NotoSansSinhala-Bold.ttf
│   │   │   └── NotoSansSinhala-Regular.ttf
│   │   ├── index.php
│   │   ├── installer
│   │   │   └── build
│   │   │       ├── assets
│   │   │       │   ├── app-aec2df31.js
│   │   │       │   ├── app-e0866a20.css
│   │   │       │   ├── favicon-a99d4e55.ico
│   │   │       │   ├── icomoon-1bcfcf1d.eot
│   │   │       │   ├── icomoon-81aea726.woff
│   │   │       │   ├── icomoon-c6be70b2.ttf
│   │   │       │   ├── icomoon-c96ab384.svg
│   │   │       │   ├── krayin-logo-4636add7.svg
│   │   │       │   └── spinner-51c5cf50.svg
│   │   │       └── manifest.json
│   │   ├── robots.txt
│   │   ├── storage -> /var/www/html/storage/app/public
│   │   ├── web.config
│   │   └── webform
│   │       └── build
│   │           ├── assets
│   │           │   ├── app-499ae59b.css
│   │           │   ├── app-8787c790.js
│   │           │   ├── app-c04ede37.css
│   │           │   └── icomoon-8bbcff3c.woff
│   │           └── manifest.json
│   ├── README.md
│   ├── resources
│   │   ├── css
│   │   │   └── app.css
│   │   ├── js
│   │   │   ├── app.js
│   │   │   └── bootstrap.js
│   │   └── views
│   │       ├── errors
│   │       │   ├── 401.blade.php
│   │       │   ├── 402.blade.php
│   │       │   ├── 403.blade.php
│   │       │   ├── 404.blade.php
│   │       │   ├── 419.blade.php
│   │       │   ├── 429.blade.php
│   │       │   ├── 500.blade.php
│   │       │   ├── 503.blade.php
│   │       │   ├── layout.blade.php
│   │       │   └── minimal.blade.php
│   │       └── vendor
│   │           ├── breadcrumbs
│   │           │   ├── bootstrap4.blade.php
│   │           │   ├── bootstrap5.blade.php
│   │           │   ├── bulma.blade.php
│   │           │   ├── foundation6.blade.php
│   │           │   ├── json-ld.php
│   │           │   ├── materialize.blade.php
│   │           │   ├── tailwind.blade.php
│   │           │   └── uikit.blade.php
│   │           ├── mail
│   │           │   ├── html
│   │           │   │   ├── button.blade.php
│   │           │   │   ├── footer.blade.php
│   │           │   │   ├── header.blade.php
│   │           │   │   ├── layout.blade.php
│   │           │   │   ├── message.blade.php
│   │           │   │   ├── panel.blade.php
│   │           │   │   ├── subcopy.blade.php
│   │           │   │   ├── table.blade.php
│   │           │   │   └── themes
│   │           │   │       └── default.css
│   │           │   └── text
│   │           │       ├── button.blade.php
│   │           │       ├── footer.blade.php
│   │           │       ├── header.blade.php
│   │           │       ├── layout.blade.php
│   │           │       ├── message.blade.php
│   │           │       ├── panel.blade.php
│   │           │       ├── subcopy.blade.php
│   │           │       └── table.blade.php
│   │           ├── notifications
│   │           │   └── email.blade.php
│   │           └── pagination
│   │               ├── bootstrap-4.blade.php
│   │               ├── bootstrap-5.blade.php
│   │               ├── default.blade.php
│   │               ├── semantic-ui.blade.php
│   │               ├── simple-bootstrap-4.blade.php
│   │               ├── simple-bootstrap-5.blade.php
│   │               ├── simple-default.blade.php
│   │               ├── simple-tailwind.blade.php
│   │               └── tailwind.blade.php
│   ├── routes
│   │   ├── api.php
│   │   ├── breadcrumbs.php
│   │   ├── channels.php
│   │   ├── console.php
│   │   └── web.php
│   ├── sail
│   ├── storage
│   │   ├── app
│   │   │   └── public
│   │   │       └── data-transfer
│   │   │           └── samples
│   │   │               ├── leads.csv
│   │   │               ├── persons.csv
│   │   │               └── products.csv
│   │   ├── debugbar
│   │   ├── framework
│   │   │   ├── cache
│   │   │   │   └── data
│   │   │   ├── sessions
│   │   │   ├── testing
│   │   │   └── views
│   │   └── logs
│   ├── stubs
│   │   ├── export.model.stub
│   │   ├── export.plain.stub
│   │   ├── export.query-model.stub
│   │   ├── export.query.stub
│   │   ├── import.collection.stub
│   │   └── import.model.stub
│   ├── tests
│   │   ├── CreatesApplication.php
│   │   ├── Feature
│   │   │   └── AuthenticationTest.php
│   │   ├── Pest.php
│   │   ├── TestCase.php
│   │   └── Unit
│   │       └── BasicTest.php
│   ├── vendor
│   └── vite.config.js
└── tree.md

662 directories, 1801 files