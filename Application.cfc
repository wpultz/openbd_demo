component output="false" {
	
	this.sessionManagement = true;


	function onApplicationStart() {
		console( "application started" );
	}


	function onRequestStart( _pageuri ) {
		console( "request started" );

		// register the article datasource
		// if( !MongoIsValid( "content" ) ) {
		// 	MongoRegister( "content", "127.0.0.1", 27017, "content" );
		// }
	}


	function onSessionStart() {
		console( "session started" );
	}

}