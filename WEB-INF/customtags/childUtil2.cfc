component output="false" extends="util" {

	// calls doSomethingElse, adds a key to the result, and returns that value
	function anotherFunc() {
		var something = this.doSomethingElse();
		something.addedKey = [ "really", "different", "value" ];

		return something;
	}

}