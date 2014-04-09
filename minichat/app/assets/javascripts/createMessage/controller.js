$(function() {
	var fayeClient = new Faye.Client('http://localhost:9292/faye');
	faye.subscribe("/messages/new", function(data){
		alert(data);
	})
})