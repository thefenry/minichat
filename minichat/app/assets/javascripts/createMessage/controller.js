$(function() {
	var fayeClient = new Faye.Client('http://localhost:9292/faye');
	fayeClient.subscribe("/messages/new", function(data){
		eval(data);
	})
})