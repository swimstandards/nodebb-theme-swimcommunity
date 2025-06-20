<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>

<div class="container-lg px-3" style="max-width: 420px; margin: 0 auto;">
	<h2 class="tracking-tight fw-semibold text-center mb-4">[[global:login]]</h2>

	{{{ if alternate_logins }}}
	<ul class="alt-logins list-unstyled mb-3">
		{{{ each authentication }}}
		<li class="{./name} mb-2">
			<a class="btn btn-light border w-100 d-flex align-items-center" rel="nofollow noopener noreferrer" target="_top"
				href="{config.relative_path}{./url}">
				{{{ if ./icons.svg }}}
				{./icons.svg}
				{{{ else }}}
				<i class="flex-shrink-0 {./icons.normal}" style="color:{./color};"></i>
				{{{ end }}}
				{{{ if ./labels.login }}}
				<div class="flex-grow-1 text-body text-sm text-center">{./labels.login}</div>
				{{{ end }}}
			</a>
		</li>
		{{{ end }}}
	</ul>
	{{{ end }}}

	{{{ if allowLocalLogin }}}
	<div class="d-flex align-items-center my-3">
		<hr class="flex-grow-1" />
		<span class="mx-3 text-muted small">OR</span>
		<hr class="flex-grow-1" />
	</div>

	<form class="d-flex flex-column gap-3" role="form" method="post" id="login-form" novalidate>

		<div class="form-floating">
			<input class="form-control" type="text" placeholder=" " name="username" id="username" autocorrect="off"
				autocapitalize="off" autocomplete="nickname" value="{username}" aria-required="true" />
			<label for="username">{allowLoginWith}</label>
		</div>

		<div class="form-floating">
			<input class="form-control" type="password" placeholder=" " name="password" id="password"
				autocomplete="current-password" autocapitalize="off" aria-required="true" />
			<label for="password">[[user:password]]</label>
		</div>

		{{{ if allowPasswordReset }}}
		<div class="d-flex justify-content-end mb-1">
			<a id="reset-link" class="small text-decoration-underline text-muted"
				href="{config.relative_path}/reset">[[login:forgot-password]]</a>
		</div>
		{{{ end }}}

		<p id="caps-lock-warning" class="text-danger hidden text-sm mb-0 form-text" aria-live="polite" role="alert"
			aria-atomic="true">
			<i class="fa fa-exclamation-triangle"></i> [[login:caps-lock-enabled]]
		</p>

		{{{ each loginFormEntry }}}
		<div class="mb-2 loginFormEntry d-flex flex-column gap-2 {./styleName}">
			<label for="{./inputId}">{./label}</label>
			<div>{{./html}}</div>
		</div>
		{{{ end }}}

		<input type="hidden" name="_csrf" value="{config.csrf_token}" />
		<input type="hidden" name="noscript" id="noscript" value="true" />

		<button class="btn btn-primary w-100" id="login" type="submit">[[global:login]]</button>

		<div class="form-check mb-2">
			<input class="form-check-input" type="checkbox" name="remember" id="remember" checked />
			<label class="form-check-label" for="remember">[[login:remember-me]]</label>
		</div>

		<div class="alert alert-danger {{{ if !error }}} hidden{{{ end }}}" id="login-error-notify" role="alert"
			aria-atomic="true">
			<strong>[[login:failed-login-attempt]]</strong>
			<p class="mb-0">{error}</p>
		</div>

		{{{ if allowRegistration }}}
		<hr />
		<span class="text-sm">[[login:dont-have-account]]</span>
		<a class="btn btn-outline-light text-body w-100" href="{config.relative_path}/register">[[register:register]]</a>
		{{{ end }}}
	</form>
	{{{ end }}}
</div>

<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>

<script>
	(function() {
		try {
			const params = new URLSearchParams(window.location.search);
			if (params.has("returnTo")) {
				if (typeof window !== "undefined" && window.sessionStorage) {
					window.sessionStorage.setItem("redirectAfterLogin", "https://swimstandards.com/account");
				}
			}
		} catch (err) {
			console.warn("redirectAfterLogin error", err);
		}
	})();
</script>