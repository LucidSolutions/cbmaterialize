<cfoutput>

<!--- ContentBoxEvent --->
#cb.event( "cbui_prePageDisplay" )#


<div class="contact">
		<div class="contact-left">
			<iframe src="#cb.themeSetting( 'googlemap' )#" frameborder="0" style="border:0"></iframe>
		</div>
		<div class="contact-right">
			<p class="phn">#cb.themeSetting( 'contactnumber' )#</p>
			<p class="phn-bottom">#cb.themeSetting( 'contactaddress1' )#
            <span>#cb.themeSetting( 'contactaddress2' )#</span></p>
			
		</div>
		<div class="clearfix"> </div>
		<div class="contact-left1">
			<h3>Contact Us With <span>Any Queston</span></h3>
			<div class="in-left">
				<form>
					<input type="text" placeholder="Your Name:" required=" ">
					<input type="text" placeholder="Phone Number:" required=" ">
					<input type="text" placeholder="E-mail:" required=" ">				
				</form>
			</div>
			<div class="in-right">
				<form>
					<textarea placeholder="Message:" required=" "></textarea>
					<input type="submit" value="Submit">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="contact-right1">
			<h3>Find Us On <span>Social Websites</span></h3>
           	 #prc.page.renderContent()#
			
			<ul>
				<li><a href="#cb.themeSetting( 'facebookshareurl' )#" class="g1"> </a></li>
				<li><a href="#cb.themeSetting( 'twittershareurl' )#" class="p1"> </a></li>
				<li><a href="#cb.themeSetting( 'googleshareurl' )#" class="facebook1"> </a></li>
				<li><a href="#cb.themeSetting( 'linkedinshareurl' )#" class="twitter1"> </a></li>
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
<!--- ContentBoxEvent --->
#cb.event("cbui_postPageDisplay")#


</cfoutput>