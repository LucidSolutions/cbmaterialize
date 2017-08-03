<cfoutput>
<div class="mdl-cell mdl-cell--12-col mdl-card mdl-shadow--4dp">
                    <div class="mdl-card__title">
                        <h2 class="mdl-card__title-text">#prc.entry.getTitle()#</h2>
                         <div class="wrapper">
                            <button id="demo-menu-lower-right" class="mdl-button mdl-js-button mdl-button--icon">
                                <i class="material-icons">share</i>
                            </button>
                            
                            <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                                for="demo-menu-lower-right">
                              <li class="mdl-menu__item"><a href="https://www.facebook.com/sharer.php?u=#cb.linkEntry(prc.entry)#" target="_new">Facebook</a></li>
                              <li class="mdl-menu__item"><a href="https://twitter.com/intent/tweet?url=#cb.linkEntry(prc.entry)#&text=#prc.entry.getTitle()#" target="_new">Twitter</a></li>
                              <li class="mdl-menu__item"><a href="https://plus.google.com/share?url=#cb.linkEntry(prc.entry)#" target="_new" >Google+</a></li>
                              <li class="mdl-menu__item"><a href="https://www.linkedin.com/shareArticle?url=#cb.linkEntry(prc.entry)#&title=#prc.entry.getTitle()#" target="_new">Linkedin</a></li>
                            </ul>
                           </div>
                    </div>
                    <div class="mdl-card__media">
                        <img class="article-image" src="#prc.entry.getFeaturedImageURL()#" border="0" alt="#prc.entry.getTitle()#">
                    </div>
                    <div class="mdl-grid portfolio-copy">
                    	<div class="mdl-cell mdl-cell--12-col mdl-card__supporting-text no-padding">
                        	 <strong>Author:</strong> <span>#prc.entry.getAuthorName()#</span>
                             <strong>Date:</strong> <span>#prc.entry.getDisplayPublishedDate()#</span>
                             <strong>Tags:</strong> <span>#cb.quickCategoryLinks(prc.entry)#</span>
                             
                        </div>
                        <div class="mdl-cell mdl-cell--12-col mdl-card__supporting-text no-padding">
                            #prc.entry.renderContent()#
                        </div>
                  
                        <div class="mdl-cell mdl-cell--12-col portfolio-contact">
                            <h2 class="mdl-card__title-text">leave a comment</h2>
                            #cb.quickCommentForm(prc.entry)#	
                        </div>		
                   </div>
         
</div>
<cfif cb.quickComments() NEQ "">
<div class="mdl-cell mdl-cell--12-col mdl-card mdl-shadow--4dp">
			<div class="mdl-card__title">
                  <h2 class="mdl-card__title-text">Comments</h2>
            </div>
               	#cb.quickComments()#
</div>
</cfif>
<cfif cb.quickRelatedContent() NEQ "">
<div class="mdl-cell mdl-cell--12-col mdl-card mdl-shadow--4dp">
            <div class="mdl-card__title">
                  <h2 class="mdl-card__title-text">Related Content</h2>
            </div>
          
                <div class="mdl-grid portfolio-max-width">
                    #cb.quickRelatedContent()#
                </div>  
           
</div>
</cfif>
</cfoutput>
<div id="demo-snackbar-example" class="mdl-js-snackbar mdl-snackbar">
  <div class="mdl-snackbar__text"></div>
  <button class="mdl-snackbar__action" type="button"></button>
</div>

  <script type="text/javascript">
(function() {
  'use strict';
  var snackbarContainer = document.querySelector('#demo-snackbar-example');
  var showSnackbarButton = document.querySelector('#commentSubmitButton');
 
  showSnackbarButton.addEventListener('click', function() {
    'use strict';
	
	var author = document.getElementById('author').value;
	var authorEmail = document.getElementById('authorEmail').value;
	var authorURL = document.getElementById('authorURL').value;
	var content = document.getElementById('content').value;
	var captchacode = document.getElementById('captchacode').value;
	
	var errorMsg = '';
	if(author==''){
   		errorMsg ='Author name is required.';
		document.getElementById('author').focus();
  	}else if(authorEmail==''){
		errorMsg ='Author email is required.';
		document.getElementById('authorEmail').focus();
	}else if(authorURL==''){
		errorMsg ='Website url is required.';
		document.getElementById('authorURL').focus();
	}else if(content==''){
		errorMsg ='comment is required.';
		document.getElementById('content').focus();
	}else if(captchacode==''){
		errorMsg ='Captcha code is required.';
		document.getElementById('captchacode').focus();
	}
	if(errorMsg!=''){
		var errorData = {message: errorMsg,timeout: 4000,actionText: 'Dismiss'};
		snackbarContainer.MaterialSnackbar.showSnackbar(errorData);
	}else{
		document.getElementById("commentForm").submit();
	}
  });
}());
</script>
