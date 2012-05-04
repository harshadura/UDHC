<html>

    <head>
        
        
        
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo/yahoo-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/event/event-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/connection/connection-min.js"></script>

        
    </head>

    <div class="yui-skin-sam">
    
<div id="container"></div>

<script>
var div = document.getElementById('container');

var handleSuccess = function(o){
	YAHOO.log("The success handler was called.  tId: " + o.tId + ".", "info", "example");
	if(o.responseText !== undefined){
		div.innerHTML = "<li>Transaction id: " + o.tId + "</li>";
		div.innerHTML += "<li>HTTP status: " + o.status + "</li>";
		div.innerHTML += "<li>Status code message: " + o.statusText + "</li>";
		div.innerHTML += "<li>HTTP headers received: <ul>" + o.getAllResponseHeaders + "</ul></li>";
		div.innerHTML += "<li>PHP response: " + o.responseText + "</li>";
		div.innerHTML += "<li>Argument object: Array ([0] => " + o.argument[0] +
						 " [1] => " + o.argument[1] + " )</li>";
	}
};

var handleFailure = function(o){
		YAHOO.log("The failure handler was called.  tId: " + o.tId + ".", "info", "example");

	if(o.responseText !== undefined){
		div.innerHTML = "<li>Transaction id: " + o.tId + "</li>";
		div.innerHTML += "<li>HTTP status: " + o.status + "</li>";
		div.innerHTML += "<li>Status code message: " + o.statusText + "</li>";
	}
};

var callback =
{
  success:handleSuccess,
  failure:handleFailure,
  argument:['foo','bar']
};

var sUrl = "assets/post.php";
var postData = "username=anonymous&userid=0";

function makeRequest(){

	var request = YAHOO.util.Connect.asyncRequest('POST', '/UHDC-war/index.jsp', callback, postData);
	
	YAHOO.log("Initiating request; tId: " + request.tId + ".", "info", "example");

}

YAHOO.log("As you interact with this example, relevant steps in the process will be logged here.", "info", "example");
</script>
<form><input type="button" value="Send a POST Request" onClick="makeRequest();"></form>

    </div>
    
    

</html>