<cfoutput>
<div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
        <div class="mdl-card__media">
            <cfif entry.getFeaturedImageURL() NEQ ''>
                <img class="article-image" src="#entry.getfeaturedImageURL()#" border="0" alt="#entry.getTitle()#">
            </cfif>
        </div>
        <div class="mdl-card__title">
            <h2 class="mdl-card__title-text"><!---<a href="#cb.linkEntry(entry)#" title="#entry.getTitle()#"></a>--->#entry.getTitle()#</h2>
        </div>
        <div class="mdl-card__supporting-text" style="height: 100px;">
			<cfif entry.hasExcerpt()>
            	<cfset RealText = entry.getExcerpt()>
            <cfelse>
            	<cfset RealText = entry.renderContent()>
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
            <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-button--accent" href="#cb.linkEntry(entry)#">Read more</a>
        </div>
 </div>
</cfoutput>