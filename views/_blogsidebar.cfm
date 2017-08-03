<cfoutput>


<!--- ContentBoxEvent --->
#cb.event( "cbui_BeforeSideBar" )#
<div class="blog-right">

                    
					<cfif cb.themeSetting( "showEntriesSearchBlogSide", true )>
                    <div class="newsletter">
                    	<h3>Entries Search</h3>
                        #cb.widget( "SearchForm" )#
                    </div> 
                    </cfif>
                    <cfif cb.themeSetting( "showCategoriesBlogSide", true )>
                    <div class="pgs">
                        <h3>Categories</h3>
                        <ul>
                            #cb.quickCategories()#		
                        </ul>
                    </div>
                    </cfif>
                    <cfif cb.themeSetting( "showRecentEntriesBlogSide", true )>
                    <div class="pgs">
                        <h3>Recent Entries</h3>
                        #cb.widget( 'RecentEntries' )#
                    </div>
                    </cfif>
                    <cfif cb.themeSetting( "showArchivesBlogSide", true )>
                    <div class="pgs">
                    	 <h3>Archives</h3>
                        #cb.widget( "Archives" )#
                    </div>
                    </cfif>
                    <cfif cb.themeSetting( "showSiteUpdatesBlogSide", true )>
                    <div class="pgs">
                    	 <h3>Site Updates</h3>
                       <ul>
		<li><a href='#cb.linkRSS()#' title="Subscribe to our RSS Feed!"><i class="fa fa-rss"></i></a> <a href='#cb.linkRSS()#' title="Subscribe to our RSS Feed!">RSS Feed</a></li>
	</ul>
                    </div>
                    </cfif>
                   

				</div>
				<div class="clearfix"> </div>
</div>









<!---#cb.widget("Meta",{titleLevel="4"})#--->

<!--- ContentBoxEvent --->
#cb.event( "cbui_afterSideBar" )#
</cfoutput>