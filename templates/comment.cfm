<cfoutput>
<div class="mdl-cell mdl-cell--12-col comments">
<div class="comment mdl-color-text--grey-700">
                <header class="comment__header">
                  #cb.quickAvatar(author=comment.getAuthorEmail(),size=60,class="comment__avatar")#
                  <div class="comment__author">
                    <strong>#comment.getAuthor()#</strong>
                    <span>#comment.getDisplayCreatedDate()#</span>
                  </div>
                </header>
                <div class="comment__text">
                	#comment.getContent()#
                </div>
                
</div>
</div>
</cfoutput>