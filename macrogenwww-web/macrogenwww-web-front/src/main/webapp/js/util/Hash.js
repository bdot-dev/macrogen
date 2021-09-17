var Hash = (function($) {
	
	var getHashObj = function() {
	    var hash = window.location.hash.substring(1);
	    if (!hash) {
	    	return null;
	    }
	    var params = {};
	    hash.split('&').forEach(function(item, index) {
			var temp = item.split('=');
			params[temp[0]] = !temp[1] ? null : temp[1]; 
	    });
	    return params;
	};
	
	var getParam = function(p) {
	    var params = getHashObj();
	    if (!params) {
	    	return null;
	    }
	    return params[p] ? params[p] : null;
	};
	
	var setParam = function(p, v) {
	    var params = getHashObj();
	    if (!params) {
	    	params = {};
	    }

	    // 설정
	    params[p] = v;
	    
	    // obj -> str
	    var hashStr = '';
	    for (key in params) {
	    	if (hashStr) {
	    		hashStr += '&';
	    	}
	    	hashStr += key + '=' + params[key];
	    }
	    if (hashStr) {
	    	window.location.hash = '#' + hashStr;
	    }
	};

	return {
		getHashObj: getHashObj,
		getParam: getParam,
		setParam: setParam,
	};
	
}(jQuery));
