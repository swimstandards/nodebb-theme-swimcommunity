{{{ if (brand:logo || (config.showSiteTitle || widgets.brand-header.length)) }}}
<header class="brand-header bg-white border-bottom sticky-top">
	<div class="container-lg px-md-4 brand-container">
		<div class="d-flex justify-content-between align-items-center gap-3">
			<!-- Left: Sidebar Toggle + Logo and Title -->
			<div class="brand-header-left d-flex align-items-center gap-2">
				<!-- Sidebar toggle button -->
				<button class="btn btn-link d-none d-lg-inline-flex sidebar-toggle-btn" component="sidebar/toggle-btn" title="Toggle sidebar">
					<i class="fa fa-fw fa-bars"></i>
				</button>
				<div class="brand-stack d-flex flex-row align-items-center">
					{{{ if (brand:logo || config.showSiteTitle) }}}
					<div component="brand/wrapper" class="d-flex align-items-center gap-3 p-2 rounded-1 align-content-stretch ">
						{{{ if brand:logo }}}
						<a component="brand/anchor"
							href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}"
							title="[[global:header.brand-logo]]">
							<img component="brand/logo"
								alt="{{{ if brand:logo:alt }}}{brand:logo:alt}{{{ else }}}[[global:header.brand-logo]]{{{ end }}}"
								class="{brand:logo:display} brand-logo brand-logo-light" src="{brand:logo}?{config.cache-buster}" />
							<img
								alt="{{{ if brand:logo:alt }}}{brand:logo:alt}{{{ else }}}[[global:header.brand-logo]]{{{ end }}}"
								class="{brand:logo:display} brand-logo brand-logo-dark" src="/assets/uploads/system/site-logo-dark.png?{config.cache-buster}" />
						</a>
						{{{ end }}}

						{{{ if config.showSiteTitle }}}
						<a component="siteTitle" class="text-truncate align-items-center d-flex"
							href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
							<h1 class="fs-6 fw-bold text-body mb-0">{config.siteTitle}</h1>
						</a>
						{{{ end }}}
					</div>
					{{{ end }}}
					
					<div class="brand-back-link-wrap">
				<a class="brand-back-link"
					href="https://swimstandards.com">
					<i class="fa fa-arrow-left" aria-hidden="true"></i>
					<span>Back to <strong>Swim Standards</strong></span>
				</a>
					</div>
			</div>
			</div>

			<div class="brand-header-right d-flex align-items-center ms-auto">
				<!-- Right: Navigation Items (moved from sidebar-right) -->
				<!-- IMPORT partials/sidebar-right.tpl -->

				{{{ if widgets.brand-header.length }}}
				<div data-widget-area="brand-header" class="brand-header-widgets d-flex gap-3 p-2 align-items-center">
					{{{each widgets.brand-header}}}
					{{./html}}
					{{{end}}}
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
</header>
{{{ end }}}
