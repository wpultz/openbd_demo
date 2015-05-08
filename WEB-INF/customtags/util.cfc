<cfcomponent output="false">
	
	<cffunction name="init">
		<cfreturn this />
	</cffunction>


	<cffunction name="doSomething">
		<cfargument name="_arg1" type="String" required="true" />

		<cfreturn "" />
	</cffunction>


	<cffunction name="doSomethingElse" returntype="struct" returnformat="JSON">
		<cfargument name="_arg1" required="true" />
		<cfargument name="_arg2" required="false" default="" />

		<cfset var map = {} />

		<cfreturn map />
	</cffunction>


	<cffunction name="doSomethingPrivately" access="private" returntype="numeric">
		<cfreturn -1 />
	</cffunction>

</cfcomponent>