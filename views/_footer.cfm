<cfoutput>
<footer class="mdl-mini-footer">
    <div class="mdl-mini-footer__left-section">
        <div class="mdl-logo">Copyright &copy; #cb.siteName()#.  All rights reserved. | Powered by ContentBox v#cb.getContentBoxVersion()#</div>
        #cb.themeSetting( 'footerBox' )#
    </div>
    <div class="mdl-mini-footer__right-section">
        <ul class="mdl-mini-footer__link-list">
            <li><a href="#">Help</a></li>
            <li><a href="#">Privacy & Terms</a></li>
        </ul>
    </div>
    #cb.event( "cbui_footer" )#
</footer>
</cfoutput>