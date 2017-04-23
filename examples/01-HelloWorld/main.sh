#!/usr/bin/env bash.origin.script

depend {
    "webext": "@com.github/pinf-it/it.pinf.org.mozilla.web-ext#s1"
}

CALL_webext run {
    "homepage": "/",
    "extension": "$__DIRNAME__/extension",
    "browserConsole": true,
    "firefoxVersion": "firefoxdeveloperedition",
    "verbose": true,
    "routes": {
        "/stop": function /* CodeBlock */ (API) {
            return function (req, res, next) {
                res.end('OK');
                API.stop();
            };
        },
        "/": function /* CodeBlock */ (API) {
            return function (req, res, next) {
                res.end('OK');
            };
        }
    }    
}

echo "OK"
