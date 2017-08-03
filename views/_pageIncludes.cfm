<cfoutput>
<title>
	<!--- Site Title --->
	<cfif cb.isPageView()>
		#cb.getCurrentPage().getTitle()#
	<cfelse>
		#cb.siteName()# - #cb.siteTagLine()#
	</cfif>
</title>

<!--- ********************************************************************************* --->
<!--- 					META TAGS														--->
<!--- ********************************************************************************* --->
<meta name="generator" 	 	content="ContentBox powered by ColdBox" />
<meta name="robots" 	 	content="index,follow" />
<meta name="viewport" 		content="width=device-width, initial-scale=1">
<meta charset="utf-8" /> 

<!--- Meta Description By Page or By Site --->
<cfif cb.isPageView() AND len( cb.getCurrentPage().getHTMLDescription() )>
	<meta name="description" content="#cb.getCurrentPage().getHTMLDescription()#" />
<cfelse>
	<meta name="description" content="#HTMLEditFormat( cb.siteDescription() )#" />
</cfif>

<!--- Meta Keywords By Page or By Site --->
<cfif cb.isPageView() AND len( cb.getCurrentPage().getHTMLKeywords() )>
	<meta name="keywords" 	 content="#cb.getCurrentPage().getHTMLKeywords()#" />
<cfelse>
	<meta name="keywords" 	 content="#cb.siteKeywords()#" />
</cfif>

<!--- Base HREF for SES enabled URLs --->
<base href="#cb.siteBaseURL()#" />

<!--- ********************************************************************************* --->
<!--- 					RSS DISCOVERY													--->
<!--- ********************************************************************************* --->
<cfif cb.themeSetting( "rssDiscovery", true )>
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />	
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />
	<!--- RSS Discovery If In View Mode --->
	<cfif cb.isPageView() and cb.getCurrentPage().getAllowComments()>
		<link rel="alternate" type="application/rss+xml" title="Pages's Recent Comments" href="#cb.linkPageRSS( comments=true, page=cb.getCurrentPage() )#" />
	</cfif>
</cfif>

<!--- ********************************************************************************* --->
<!--- 					CSS 															--->
<!--- ********************************************************************************* --->


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="#cb.themeRoot()#/includes/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="#cb.themeRoot()#/includes/css/style.css" rel="stylesheet" type="text/css" media="all" />


<!--- ********************************************************************************* --->
<!--- 					JAVASCRIPT														--->
<!--- ********************************************************************************* --->
<!-- injector:js -->
<script src="#cb.themeRoot()#/includes/js/jquery-1.11.1.min.js"></script>
<!-- endinjector -->

</cfoutput>