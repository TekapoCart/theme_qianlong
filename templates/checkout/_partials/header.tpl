<header id="header">
    <div>
        <div id="menu-icon" class="hidden-md-up">
            <i class="material-icons d-inline">menu</i>
        </div>
        {hook h='displayNav1'}
        <div class="header-nav icons">
            <div id="_mobile_cart"></div>
            <div class="right-nav hidden-sm-down">
                {hook h='displayNav2'}
            </div>
        </div>
    </div>
</header>

{* sidebar start *}
<msc-sidebar id="mobile_top_menu_msc_wrapper" side="left">
    <nav>
        <div class="header">
            <a onclick="(() => {
			document.querySelector('#mobile_top_menu_msc_wrapper').curtainCall();
		})()"><i class="material-icons float-xs-left">close</i></a>
        </div>
        <div class="body">
            <div class="nav__section">
                <div class="js-top-menu-bottom">
                    <div id="_mobile_user_info"></div>
                    <div id="_mobile_language_selector"></div>
                    <div id="_mobile_currency_selector"></div>
                </div>
            </div>
        </div>
    </nav>
</msc-sidebar>
{* sidebar end *}