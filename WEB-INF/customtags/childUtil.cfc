<cfcomponent output="false" extends="util2">
	
	<!--- calls doSomethingElse, adds a key to the result, and returns that value --->
	<cffunction name="anotherFunc">
		<cfset var something = this.doSomethingElse( "arg1 value", "arg2 value" ) />
		<cfset something.addedKey = [ "really", "different", "value" ] />

		<cfreturn something />
	</cffunction>

</cfcomponent>