component output="false" extends="util" {

	// calls doSomethingElse, adds a key to the result, and returns that value
	function anotherFunc() {
		var something = this.doSomethingElse( "arg1 value", "arg2 value" );
		something.addedKey = [ "really", "different", "value" ];

		return something;
	}

}