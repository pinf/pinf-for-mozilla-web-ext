#!/usr/bin/env bash.origin.script

depend {
    "webext": "it.pinf.org.mozilla.web-ext # runner/v0"
}

echo "TEST_MATCH_IGNORE>>>"

CALL_webext run {
    "homepage": "/",
    "extension": "$__DIRNAME__/extension",
    "browserConsole": true,
    "firefoxVersion": "firefox",
    "verbose": true,
    "routes": {
        "/stop": function /* CodeBlock */ (API) {
            return function (req, res, next) {
                res.end('OK');
                API.SERVER.stop();
            };
        },
        "/": function /* CodeBlock */ (API) {
            return function (req, res, next) {
                res.end('OK');
            };
        }
    }    
}

echo "<<<TEST_MATCH_IGNORE"

echo "OK"
