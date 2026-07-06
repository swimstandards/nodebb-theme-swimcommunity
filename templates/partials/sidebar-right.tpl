<nav component="sidebar/right" class="{{{ if config.theme.openSidebars}}}open{{{ end }}} text-dark sidebar sidebar-right d-none d-lg-flex align-items-center">
	{{{ if config.loggedIn }}}
	<ul id="logged-in-menu" class="list-unstyled d-flex flex-column gap-2 align-items-center mb-0" role="menu">
	<!-- IMPORT partials/sidebar/logged-in-menu.tpl -->
	</ul>
	{{{ else }}}
	<ul id="logged-out-menu" class="list-unstyled d-flex flex-column gap-2 align-items-center mb-0" role="menu">
	<!-- IMPORT partials/sidebar/logged-out-menu.tpl -->
	</ul>
	{{{ end }}}

	<div class="visible-open small text-secondary mt-auto" data-widget-area="sidebar-footer">
		{{{each widgets.sidebar-footer}}}
		{{./html}}
		{{{end}}}
	</div>
</nav>
