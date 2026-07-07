<div class="{{{ if config.theme.stickyToolbar }}}sticky-tools{{{ end }}} {{{ if config.theme.topicSidebarTools }}}d-block d-lg-none{{{ end }}}" style="top: {{{ if (config.theme.topMobilebar && !config.theme.autohideBottombar) }}}calc(var(--brand-header-offset, 0px) + var(--panel-offset)){{{ else }}}var(--brand-header-offset, 0px){{{ end }}};">
	<nav class="d-flex flex-nowrap my-2 p-0 border-0 rounded topic-main-buttons">
		<div class="topic-toolbar-surface d-flex flex-row p-2 gap-2 border rounded w-100 align-items-center">
			<div class="d-flex me-auto mb-0 gap-2 align-items-center flex-wrap">
				<!-- IMPORT partials/topic/mark-unread.tpl -->
				<!-- IMPORT partials/topic/watch.tpl -->
				<!-- IMPORT partials/topic/sort.tpl -->
				<!-- IMPORT partials/topic/tools.tpl -->

				{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
				<a class="btn btn-ghost btn-sm d-none d-lg-flex align-items-center align-self-stretch" target="_blank" href="{rssFeedUrl}" title="[[global:rss-feed]]"><i class="fa fa-rss text-primary"></i></a>
				{{{ end }}}
			</div>
			<!-- IMPORT partials/topic/reply-button.tpl -->
		</div>
	</nav>
</div>
