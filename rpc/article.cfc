component output="false" {

	this.CONTENT_DS = "content";
	this.ARTICLE_COLL = "article";
	
	/**
	* @method getArticle
	* @param {String} _id mongo _id of the article to retrieve
	* @returns {struct}
	*/
	remote struct function getArticle( required String _id ) returnformat="JSON" {
		var res = false;
		try {
			res = MongoCollectionFindOne( this.CONTENT_DS, this.ARTICLE_COLL, { _id: _id } );
		} catch( any _err ) {
			//
		}

		if( res == false ) {
			return { _success: false, _message: "Unablet to find document" };
		}
		return { _success: true, _result: res };
	}


	/**
	* @method putArticle
	* @param {struct} _articleData
	* @returns {struct}
	*/
	remote struct function putArticle( required struct _articleData ) returnformat="JSON" {
		_articleData._id = CreateUUID( "" );
		try {
			MongoCollectionInsert( this.CONTENT_DS, this.ARTICLE_COLL, _articleData );
		} catch( any _err ) {
			//
		}

		return { _success: true, _result: _articleData._id };
	}


	/**
	* @method updateArticle
	* @param {String} _id mongo _id of the article to update
	* @param {struct} _articleData article data
	* @returns {struct}
	*/
	remote struct function updateArticle( required String _id, required struct _articleData ) returnformat="JSON" {
		//remove the _id key, shouldn't be changing this
		StructDelete( _articleData, "_id" );
		try {
			MongoCollectionUpdate( this.CONTENT_DS, this.ARTICLE_COLL, { _id: _id }, _articleData );
		} catch( any _err ) {
			return { _success: false, _message: "Error encountered while updating article" };
		}

		return { _success: true };
	}

}