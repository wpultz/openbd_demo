component output="false" {
	
	this.sessionManagement = true;

	function onRequestStart( _pageuri ) {
		// register the article datasource
		if( !MongoIsValid( "content" ) ) {
			MongoRegister( "content", "127.0.0.1", 27017, "content" );
		}
	}

}