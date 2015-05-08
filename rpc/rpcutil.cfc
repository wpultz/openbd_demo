<cfcomponent output="false">
	
	<cffunction name="getMarkup" access="remote" returntype="String" returnformat="plain">
		<cfreturn "<span>markup here</span>" />
	</cffunction>


	<cffunction name="getJSONData" access="remote" returntype="struct" returnformat="JSON">
		<cfreturn {
			key1: "abc",
			key2: "def"
		} />
	</cffunction>
	
</cfcomponent>