
PINF.bundle("", function(require) {
	require.memoize("/main.js", function(require, exports, module) {
		exports.main = function(options) {

			console.log("Hello World from bundle");

			// TODO: Put the code below into a generic PINF test helper.

			function stop (url) {
				if (!/^http/.test(url)) return;
				if (!stop._urls) stop._urls = {};
				if (stop._urls[url]) return;
				stop._urls[url] = true;
				var xmlHttp = new XMLHttpRequest();
				console.log("Call:", url);
				xmlHttp.open( "POST", url, false);
				xmlHttp.send(null);
			}

			function check () {
				browser.tabs.query({}).then(function (tabs) {

					tabs.forEach(function (tab) {
						stop(tab.url + "stop")
					});
					return null;
				}).catch(console.error);
			}

			check();
			setTimeout(check, 500);
			setTimeout(check, 1000);
			setTimeout(check, 2000);
			setTimeout(check, 3000);
			setTimeout(check, 5000);
		}
	});
});
