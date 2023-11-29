<cfoutput>
<div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
        <div class="mdl-card__media">
            <a href="#cb.linkEntry(entry)#" title="#entry.getTitle()#"><img class="article-image" src="#relatedContent.getfeaturedImageURL()#" border="0" alt="#relatedContent.getTitle()#"></a>
        </div>
        <div class="mdl-card__title">
            <h2 class="mdl-card__title-text"><a href="#cb.linkEntry(entry)#" title="#entry.getTitle()#">#relatedContent.getTitle()#</a></h2>
        </div>
        <div class="mdl-card__supporting-text" style="height: 100px;">
			<cfif relatedContent.hasExcerpt()>
            	<cfset RealText = relatedContent.renderExcerpt()>
            <cfelse>
            	<cfset RealText = relatedContent.renderContent()>
            </cfif>
           	 <cfset firstIndex = 130>
            <cfif len(RealText) GTE firstIndex>
            	<cfset neIndex = left(RealText,firstIndex)&' ...'>
            <cfelse>
            	<cfset neIndex = RealText>
            </cfif>
            #neIndex#
        </div>
        <div class="mdl-card__actions mdl-card--border">
            <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-button--accent" href="#cb.linkEntry(relatedContent)#">Read more</a>
        </div>
 </div>
</cfoutput>
<!---
<li class="nbs-flexisel-item">
<div class="banner-bottom-grid">
    <img src="#relatedContent.getfeaturedImageURL()#" alt="#relatedContent.getTitle()#" class="img-responsive">
    	<h3>#relatedContent.getTitle()#</h3>
		<cfif relatedContent.hasExcerpt()>
           <cfset RealText = relatedContent.renderExcerpt()>
        <cfelse>
           <cfset RealText = relatedContent.renderContent()>
        </cfif>
		<cfset firstIndex = 180>
        <cfif len(RealText) GTE firstIndex>
            <cfset neIndex = left(RealText,firstIndex)&' ...'>
        <cfelse>
            <cfset neIndex = RealText>
        </cfif>
        <p>#neIndex#</p>
        <div class="more">
            <a href="#cb.linkEntry(relatedContent)#" class="hvr-bounce-to-bottom sint">Read More</a>
        </div>
</div>
</li>                  
</cfoutput>--->