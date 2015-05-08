component output="false" {

	remote String function getMarkup() returnformat="" {
		return "<span>markup here</span>";
	}


	remote struct function getJSONData() returnformat="JSON" {
		return {
			key1: "abc",
			key2: "def"
		};
	}

}