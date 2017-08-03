<cfoutput>


<header class="mdl-layout__header mdl-layout__header--waterfall portfolio-header">
    <div class="mdl-layout__header-row">
        <span class="mdl-layout__title">#cb.siteName()#</span>
    </div>
    <div class="mdl-layout__header-row portfolio-navigation-row mdl-layout--large-screen-only">
        <nav class="mdl-navigation mdl-typography--body-1-force-preferred-font">
        	<cfif ( !prc.cbSettings.cb_site_disable_blog )>
                <cfif cb.isBlogView()> <a class="mdl-navigation__link is-active" href="#cb.linkBlog()#"><cfelse><a class="mdl-navigation__link" href="#cb.linkBlog()#"></cfif>
                    Blog</a>
            </cfif>
            <cfset menuData = cb.rootMenu( type="data", levels="2" )>
             <cfloop array="#menuData#" index="menuItem">
				<cfif NOT structKeyExists( menuItem, "subPageMenu" )>
						<cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
                             <a class="mdl-navigation__link is-active" href="#menuItem.link#">
                        <cfelse>
                             <a class="mdl-navigation__link" href="#menuItem.link#">
                        </cfif>
                        #menuItem.title#</a>
                </cfif>
             </cfloop>        
        </nav>
    </div>
</header>
<div class="mdl-layout__drawer mdl-layout--small-screen-only">
    <nav class="mdl-navigation mdl-typography--body-1-force-preferred-font">
        	<cfif ( !prc.cbSettings.cb_site_disable_blog )>
                <cfif cb.isBlogView()> <a class="mdl-navigation__link is-active" href="#cb.linkBlog()#"><cfelse><a class="mdl-navigation__link" href="#cb.linkBlog()#"></cfif>
                    Blog</a>
            </cfif>
            <cfset menuData = cb.rootMenu( type="data", levels="2" )>
             <cfloop array="#menuData#" index="menuItem">
				<cfif NOT structKeyExists( menuItem, "subPageMenu" )>
						<cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
                             <a class="mdl-navigation__link is-active" href="#menuItem.link#">
                        <cfelse>
                             <a class="mdl-navigation__link" href="#menuItem.link#">
                        </cfif>
                        #menuItem.title#</a>
                </cfif>
             </cfloop>                   

    </nav>
</div>


</cfoutput>