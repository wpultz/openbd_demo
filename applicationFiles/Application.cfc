<cfcomponent output=false>
<cfscript>
	
this.name = "app-" & this.getAppId();
this.sessionManagement = true;


function onRequestStart( _uri ) {
	// add the "p" key to the session for further manipulation
	if( StructKeyExists( url, "p" ) ) {
		session.p = url.p;
	}

	// put the app id in the session to track which session storage is being used in the application
	if( !StructKeyExists( session, "apid" ) ) {
		session.apid = this.name;
	}

	console( this.name );
	console( session );
}


function getAppId() {
	var parts = ListToArray( CGI.script_name, "/" );
	return parts[ 2 ];
}
</cfscript>
</cfcomponent>