
<cfscript>
/**
* A cool basic commenting form for ContentBox
*/
component extends="contentbox.models.ui.BaseWidget" singleton{

	CommentForm function init(){
		// Widget Properties
		setName( "CommentForm" );
		setVersion( "1.0" );
		setDescription( "A cool basic commenting form for ContentBox content objects." );
		setAuthor( "Ortus Solutions" );
		setAuthorURL( "http://www.ortussolutions.com" );
		setIcon( "commenting" );
		setCategory( "Miscellaneous" );
		return this;
	}

	/**
	* The main commenting form widget
	* @content.hint The content object to build the comment form for: page or entry
	*/
	any function renderIt(any content){
		var event 		= getRequestContext();
		var cbSettings 	= event.getValue(name="cbSettings",private=true);
		var captcha		= "";
		var commentForm = "";
		
		// captcha?
		if( structKeyExists(cbSettings, 'cb_comments_captcha') AND len(cbSettings.cb_comments_captcha) GT 0 ){
			saveContent variable="captcha"{
				writeOutput("
					<p><img src='#event.buildLink( event.getValue( 'cbEntryPoint', '', true) & '__captcha')#'></p>
					<div class='mdl-textfield mdl-js-textfield mdl-textfield--floating-label'>
						<input class='mdl-textfield__input' type='text' name='captchacode' id='captchacode' size='50'>
						<label class='mdl-textfield__label' for='captchacode'>Enter the security code shown above</label>
					</div>
				");
			}
		}

		// generate comment form
		saveContent variable="commentForm"{
			writeOutput('<div class="table-form">
			#html.startForm( name="commentForm", id="commentForm", action=cb.linkCommentPost(arguments.content), novalidate="novalidate" )#

				#cb.event( "cbui_preCommentForm" )#
				
				#getInstance( "messagebox@cbMessagebox" ).renderIt()#
				

				#html.hiddenField( name="contentID", value=arguments.content.getContentID() )#
				#html.hiddenField( name="contentType",value=arguments.content.getContentType() )#
				
				<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
					<input class="mdl-textfield__input" pattern="[A-Z,a-z, ]*" type="text" name="author" id="author" value=#event.getValue( "author", "")#>
					<label class="mdl-textfield__label" for="author">Author Name...</label>
					<span class="mdl-textfield__error">Letters and spaces only</span>
				</div>
				
				<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
					<input class="mdl-textfield__input" type="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="authorEmail" name="authorEmail" value=#event.getValue( "authorEmail", "" )#>
					<label class="mdl-textfield__label" for="authorEmail">Email...</label>
					<span class="mdl-textfield__error">Email Address invalid</span>
				</div>
				
				<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
					<input class="mdl-textfield__input" type="url" id="authorURL" name="authorURL" value=#event.getValue( "authorURL", "" )#>
					<label class="mdl-textfield__label" for="authorURL">Website...</label>
					<span class="mdl-textfield__error">Website url invalid</span>
				</div>
						
				<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
					<textarea class="mdl-textfield__input" type="text" pattern="[A-Z,a-z,0-9 ]*" rows="5" id="content" name="content">#event.getValue("content","")#</textarea>
					<label class="mdl-textfield__label" for="content">Comment</label>
					<span class="mdl-textfield__error">Letters and numbers only</span>
				</div>
				
				#captcha#
				
				#cb.event( "cbui_postCommentForm" )#
				
				<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" id="commentSubmitButton" name="commentSubmitButton" type="button">
					Submit
				</button>
			#html.endForm()# </div>
			');
		}

		return commentForm;
	}

}
</cfscript>
