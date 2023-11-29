<cfoutput>
<!--- Global Layout Arguments --->
<cfparam name="args.print" 		default="false">
<cfparam name="args.sidebar" 	default="true">
<!DOCTYPE html>
<html lang="en">
<head>
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
	#cb.quickView( '_header' )#
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