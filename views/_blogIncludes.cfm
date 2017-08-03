<cfoutput>
<title>
<!--- Site Title --->	
<cfif cb.isEntryView()>
	#cb.getCurrentEntry().getTitle()#
<cfelse>
	#cb.siteName()# - #cb.siteTagLine()#
</cfif>
</title>

<!--- ********************************************************************************* --->
<!--- 					META TAGS														--->
<!--- ********************************************************************************* --->

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="A portfolio template that uses Material Design Lite.">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<meta name="generator" 	 	content="ContentBox powered by ColdBox" />
<meta name="robots" 	 	content="index,follow" />
<meta name="viewport" 		content="width=device-width, initial-scale=1">


<!--- Meta per page or index --->
<cfif cb.isEntryView() AND len( cb.getCurrentEntry().getHTMLDescription() )>
	<meta name="description" content="#cb.getCurrentEntry().getHTMLDescription()#" />
<cfelse>
	<meta name="description" content="#HTMLEditFormat( cb.siteDescription() )#" />
</cfif>
<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLKeywords())>
	<meta name="keywords" 	 content="#cb.getCurrentEntry().getHTMLKeywords()#" />
<cfelse>
	<meta name="keywords" 	 content="#cb.siteKeywords()#" />
</cfif>


<!--- Base HREF for SES enabled URLs --->
<base href="#cb.siteBaseURL()#" />
<cfif cb.isEntryView()>

<!-- Social: Google+ / Schema.org  -->
<link rel="author" href="https://plus.google.com/+NicholasCerminaraV/">
<link rel="publisher" href="https://plus.google.com/+ScotchIo/">
<meta itemprop="name" content="#cb.getCurrentEntry().getTitle()#">
<meta itemprop="description" content="#cb.getCurrentEntry().getHTMLDescription()#">
<meta itemprop="image" content="#cb.siteBaseURL()##cb.getCurrentEntry().getfeaturedImageURL()#">



<!-- for Facebook -->          
<meta property="og:title" content="#cb.getCurrentEntry().getTitle()#" />
<meta property="og:type" content="article" />
<meta property="og:image" content="#cb.siteBaseURL()##cb.getCurrentEntry().getfeaturedImageURL()#" />
<meta property="og:url" content="#cb.linkEntry(cb.getCurrentEntry())#" />
<meta property="og:description" content="#cb.getCurrentEntry().getExcerpt()#" />
<meta property="og:site_name" content="Airshock" />

<!-- for Twitter -->          
<meta name="twitter:card" content="summary" />
<meta name="twitter:title" content="#cb.getCurrentEntry().getTitle()#" />
<meta name="twitter:description" content="#cb.getCurrentEntry().getHTMLDescription()#" />
<meta name="twitter:image" content="#cb.siteBaseURL()##cb.getCurrentEntry().getfeaturedImageURL()#" />

</cfif>    





<!--- ********************************************************************************* --->
<!--- 					RSS DISCOVERY													--->
<!--- ********************************************************************************* --->
<cfif cb.themeSetting( "rssDiscovery", true )>
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Updates" href="#cb.linkRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Comment Updates" href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />	
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />
	<cfif cb.isEntryView()>
		<link rel="alternate" type="application/rss+xml" title="Entry's Recent Comments" href="#cb.linkRSS( comments=true, entry=cb.getCurrentEntry() )#" />
	</cfif>
</cfif>

<!--- ********************************************************************************* --->
<!--- 					CSS 															--->
<!--- ********************************************************************************* --->



<!-- injector:css -->
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/material.css">
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/styles.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- endinjector -->

<!--- ********************************************************************************* --->
<!--- 					JAVASCRIPT														--->
<!--- ********************************************************************************* --->
<!-- injector:js -->
<!---<script src="#cb.themeRoot()#/includes/js/jquery-1.11.1.min.js"></script>--->
<script src="https://code.getmdl.io/1.1.3/material.min.js"></script><!---
<script src="#cb.themeRoot()#/includes/js/material.min.js"></script>--->
<!-- endinjector -->
</cfoutput>