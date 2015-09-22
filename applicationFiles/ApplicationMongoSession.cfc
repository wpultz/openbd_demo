<cfcomponent output=false>
<cfscript>
	
this.name = "app-" & this.getAppId();
this.sessionManagement = true;
this.sessionStorage = "mongo://127.0.0.1:27017";

function onRequestStart( _uri ) {
	if( StructKeyExists( url, "p" ) ) {
		session.p = url.p;
	}

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