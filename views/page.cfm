<cfoutput>

<!--- ContentBoxEvent --->
#cb.event( "cbui_prePageDisplay" )#

<div class="mdl-cell mdl-cell--12-col mdl-card mdl-shadow--4dp">
        <div class="mdl-card__title">
            <h2 class="mdl-card__title-text">#prc.page.getTitle()#</h2>
            <div class="wrapper">
            <button id="demo-menu-lower-right" class="mdl-button mdl-js-button mdl-button--icon">
             	<i class="material-icons">share</i>
            </button>
            
            <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                for="demo-menu-lower-right">
                              <li class="mdl-menu__item"><a href="#cb.themeSetting( 'facebookshareurl' )#">Facebook</a></li>
<li class="mdl-menu__item"><a href="#cb.themeSetting( 'twittershareurl' )#">Twitter</a></li>
<li class="mdl-menu__item"><a href="#cb.themeSetting( 'googleshareurl' )#">Google+</a></li>
<li class="mdl-menu__item"><a href="#cb.themeSetting( 'linkedinshareurl' )#">Linkedin</a></li>	
            </ul>
            </div>
        </div>
        <cfif prc.page.getFeaturedImageURL() NEQ "">
            <div class="mdl-card__media">
                <img class="article-image" src="#prc.page.getFeaturedImageURL()#" border="0" alt="#prc.page.getTitle()#">
            </div>
        </cfif>

        <div class="mdl-grid portfolio-copy">
            <div class="mdl-cell mdl-cell--12-col mdl-card__supporting-text no-padding ">
                #prc.page.renderContent()#
            </div>            
        </div>
</div>

<!--- ContentBoxEvent --->
#cb.event("cbui_postPageDisplay")#

</cfoutput>