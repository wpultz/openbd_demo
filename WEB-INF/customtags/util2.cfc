component output="false" {

	function init() {
		return this;
	}


	function doSomething( required String _arg1 ) {
		return "";
	}


	struct function doSomethingElse( required _arg1, _arg2="" ) returnformat="JSON" {
		var map = {};

		return map;
	}


	private numeric function doSomethingPrivately() {
		return -1;
	}
	
}