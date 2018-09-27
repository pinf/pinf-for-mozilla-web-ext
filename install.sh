#!/usr/bin/env bash.origin.script

sourcePath="$(node --eval 'process.stdout.write(require.resolve("pinf-loader-js/loader.js"));')"

if [ ! -e "scripts/pinf-loader.js" ]; then
    ln -s "${sourcePath}" "scripts/pinf-loader.js"
fi
