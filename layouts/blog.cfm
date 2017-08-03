<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head prefix="og: http://ogp.me/ns## fb: http://ogp.me/ns/fb## article: http://ogp.me/ns/article##">
	<!--- Page Includes --->
	#cb.quickView( "_blogIncludes" )#

	<!--- ContentBoxEvent --->
	#cb.event( "cbui_beforeHeadEnd" )#
</head>
<body>
	<!--- ContentBoxEvent --->
	#cb.event( "cbui_afterBodyStart" )#
    
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
	
	<!--- Header --->
	#cb.quickView( view='_header' )#
     <main class="mdl-layout__content">
		 <div class="mdl-grid portfolio-max-width">
        	
			<!--- ContentBoxEvent --->
			#cb.event( "cbui_beforeContent" )#

			<!--- Main View --->
			#cb.mainView( args=args )#

			<!--- ContentBoxEvent --->
			#cb.event( "cbui_afterContent" )#
	
   		 </div>   
			#cb.quickView( view='_footer' )#
	
				<!--- ContentBoxEvent --->
			#cb.event( "cbui_beforeBodyEnd" )#
         
    	</main>
    </div>
</body>
</html>
</cfoutput>