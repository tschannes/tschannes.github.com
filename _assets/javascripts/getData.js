var $jsonp = (function(){
  var that = {};

  that.send = function(src, options) {
    var callback_name = options.callbackName || 'callback',
      on_success = options.onSuccess || function(){},
      on_timeout = options.onTimeout || function(){},
      timeout = options.timeout || 10; // sec

    var timeout_trigger = window.setTimeout(function(){
      window[callback_name] = function(){};
      on_timeout();
    }, timeout * 1000);

    window[callback_name] = function(data){
      window.clearTimeout(timeout_trigger);
      on_success(data);
    }

    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.async = true;
    script.src = src;

    document.getElementsByTagName('head')[0].appendChild(script);
  }

  return that;
})();

//USE THE ABOVE
var baseUrl = 'https://api.forecast.io/forecast/' + '01f738ef524ecd81eafcead2fd6389b' + '/' + '47.0441453,8.2971598'
$jsonp.send(baseUrl + '?callback=handleStuff', {
    callbackName: 'handleStuff',
    onSuccess: function(json){
        console.log('success!', json);
    },
    onTimeout: function(){
        console.log('timeout!');
    },
    timeout: 10
});

function handleStuff(){
	console.log(data);
}