#!/usr/bin/env bash.origin.script

sourcePath="$(node --eval 'process.stdout.write(require.resolve("pinf-loader-js/dist/babel-regenerator-runtime.js"));')"
cp "${sourcePath}" "scripts/lib/babel-regenerator-runtime.js"

sourcePath="$(node --eval 'process.stdout.write(require.resolve("pinf-loader-js/dist/loader-core.browser.js"));')"
cp "${sourcePath}" "scripts/lib/pinf-loader-core.browser.js"
cp "scripts/lib/pinf-loader-core.browser.js" "examples/01-HelloWorld/extension/scripts/lib/pinf-loader-core.browser.js"

sourcePath="$(node --eval 'process.stdout.write(require.resolve("pinf-loader-js/dist/loader-full.browser.js"));')"
cp "${sourcePath}" "scripts/lib/pinf-loader-full.browser.js"
cp "scripts/lib/pinf-loader-full.browser.js" "examples/01-HelloWorld/extension/scripts/lib/pinf-loader-full.browser.js"

cp "scripts/loader.js" "examples/01-HelloWorld/extension/scripts/loader.js"
