<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<cfoutput>
<header class="mdl-layout__header mdl-layout__header--waterfall portfolio-header">
    <div class="mdl-layout__header-row">
        <cfif cb.themeSetting( 'headerLogo' ) is "">
            <a href="#cb.linkHome()#">#cb.siteName()#</a>
        <cfelse>
            <a href="#cb.linkHome()#"><img src="#cb.themeSetting( 'headerLogo' )#" class="img-responsive" alt="#cb.siteName()#" class="img-responsive" /></a>
        </cfif>
    </div>
    <div class="mdl-layout__header-row portfolio-navigation-row mdl-layout--large-screen-only">
        <nav class="mdl-navigation mdl-typography--body-1-force-preferred-font">
            <cfif (!structKeyExists(prc.cbSettings, "cb_site_disable_blog"))>
                <cfif cb.isBlogView()> <a class="mdl-navigation__link is-active" href="#cb.linkBlog()#"><cfelse><a class="mdl-navigation__link" href="#cb.linkBlog()#"></cfif>
                    Blog</a>
            </cfif>
            <cfset menuData = cb.rootMenu( type="data", levels="2" )>
            <cfset count=1/>
            <cfloop array="#menuData#" index="menuItem">
                <cfif structKeyExists( menuItem, "subPageMenu" )>
                    <div class="dropdown">
                        <cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
                            <a class="mdl-navigation__link is-active" href="javaScript:void(0)">
                        <cfelse>
                            <a class="mdl-navigation__link" href="javaScript:void(0)">
                        </cfif>
                        #menuItem.title# <i class="fa fa-caret-down"></i></a>
                        #buildSubMenu( menuData=menuItem.subPageMenu, parentLink=menuItem.link, parentTitle=menuItem.title,countRecrod=count)#  
                    </div>
                <cfelse>
                    <cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
                         <a class="mdl-navigation__link is-active" href="#menuItem.link#">
                    <cfelse>
                         <a class="mdl-navigation__link" href="#menuItem.link#">
                    </cfif>
                    #menuItem.title#</a>
                </cfif>
                <cfset count = count +1 />
            </cfloop>        
        </nav>
    </div>
</header>
<div class="mdl-layout__drawer mdl-layout--small-screen-only">
    <nav class="mdl-navigation mdl-typography--body-1-force-preferred-font">
            <cfif ( prc.oCurrentSite.getIsBlogEnabled() )>
                <cfif cb.isBlogView()> <a class="mdl-navigation__link is-active" href="#cb.linkBlog()#"><cfelse><a class="mdl-navigation__link" href="#cb.linkBlog()#"></cfif>
                    Blog</a>
            </cfif>
            <cfset menuData = cb.rootMenu( type="data", levels="2" )>
            <cfset count=1/>
            <cfloop array="#menuData#" index="menuItem">
                <cfif structKeyExists( menuItem, "subPageMenu" )>
                    <div class="dropdown">
                        <cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
                            <a class="mdl-navigation__link is-active" href="javaScript:void(0)" onclick="myFunction('myDropdown#count#')">
                        <cfelse>
                            <a class="mdl-navigation__link" href="javaScript:void(0)" onclick="myFunction('myDropdown#count#')">
                        </cfif>
                        #menuItem.title# <i class="fa fa-caret-down"></i></a>
                        #buildSubMenu( menuData=menuItem.subPageMenu, parentLink=menuItem.link, parentTitle=menuItem.title, countRecrod=count)#    
                    </div>
                <cfelse>
                    <cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
                         <a class="mdl-navigation__link is-active" href="#menuItem.link#">
                    <cfelse>
                         <a class="mdl-navigation__link" href="#menuItem.link#">
                    </cfif>
                    #menuItem.title#</a>
                </cfif>
                <!--- <cfif NOT structKeyExists( menuItem, "subPageMenu" )>
                        <cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
                             <a class="mdl-navigation__link is-active" href="#menuItem.link#">
                        <cfelse>
                             <a class="mdl-navigation__link" href="#menuItem.link#">
                        </cfif>
                        #menuItem.title#</a>
                </cfif> --->
                <cfset count = count+1/>
            </cfloop>                   

    </nav>
</div>

<cfscript>
any function buildSubMenu( required menuData, required parentLink, required parentTitle ,required countRecrod){
    var menu = '<div class="dropdown-content" id="myDropdown#countRecrod#">';

    // Parent
    menu &= '<a href="#parentLink#"><strong>#parentTitle#</strong></a>';

    for( var menuItem in arguments.menuData ){
        if( !structKeyExists( menuItem, "subPageMenu" ) ){
            menu &= '<a href="#menuItem.link#">#menuItem.title#</a>';
        } else {
            menu &= '<div class="dropdown-content" id="myDropdown"><a href="#menuItem.link#" class="dropdown-toggle" data-toggle="dropdown">#menuItem.title#</a>';
            menu &= buildSubMenu( menuItem.subPageMenu, menuItem.link, menuItem.parentTitle );
            menu &= '</div>';
        }
    }
    menu &= '</div>';
    return menu;
}
</cfscript>
</cfoutput>
<script type="text/javascript">
function myFunction(id) {
    document.getElementById(id).classList.toggle("show");
}
</script>