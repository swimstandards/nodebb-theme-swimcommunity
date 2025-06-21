<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>

<div class="row register flex-fill">
	<div
		class="d-flex flex-column gap-2 {{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<h2 class="tracking-tight fw-semibold text-center mb-4">
			[[global:register]]
		</h2>

		<div class="container-lg px-3" style="max-width: 420px; margin: 0 auto;">
			{{{ if alternate_logins }}}
			<ul class="alt-logins list-unstyled mb-3">
				{{{ each authentication

        }}}
				<li class="{./name} mb-2">
					<a class="btn btn-dark border w-100 d-flex align-items-center" rel="nofollow noopener noreferrer"
						target="_top" href="{config.relative_path}{./url}">
						{{{ if ./icons.svg }}} {./icons.svg} {{{ else }}}
						<i class="flex-shrink-0 {./icons.normal}" style="color:{./color};"></i>
						{{{ end }}} {{{ if ./labels.register }}}
						<div class="flex-grow-1 text-center" style="margin-left: -20px;">
							{./labels.register}
						</div>
						{{{ end }}}
					</a>
				</li>
				{{{ end

        }}}
			</ul>

			<div class="d-flex align-items-center my-3">
				<hr class="flex-grow-1" />
				<span class="mx-3 text-muted small">OR</span>
				<hr class="flex-grow-1" />
			</div>
			{{{ end }}}

			<div class="register-block">
				<form component="register/local" class="d-flex flex-column gap-3" role="form"
					action="{config.relative_path}/register" method="post" novalidate>
					<div class="form-floating">
						<input class="form-control" type="text" name="username" id="username" placeholder=" " autocorrect="off"
							autocapitalize="off" autocomplete="nickname" aria-required="true" aria-describedby="username-notify" />
						<label for="username">[[register:username]]</label>
						<span class="register-feedback text-xs text-danger" id="username-notify" aria-live="polite"></span>
						<span class="form-text text-xs">[[register:help.username-restrictions, {minimumUsernameLength},
							{maximumUsernameLength}]]</span>
					</div>

					<div class="form-floating">
						<input class="form-control" type="password" name="password" id="password" placeholder=" "
							autocomplete="new-password" autocapitalize="off" aria-required="true"
							aria-describedby="password-notify" />
						<label for="password">[[register:password]]</label>
						<span class="register-feedback text-xs text-danger" id="password-notify" aria-live="polite"></span>
						<span class="form-text text-xs">[[register:help.minimum-password-length,
							{minimumPasswordLength}]]</span>
						<p id="caps-lock-warning" class="text-danger hidden">
							<i class="fa fa-exclamation-triangle"></i>
							[[login:caps-lock-enabled]]
						</p>
					</div>

					<div class="form-floating">
						<input class="form-control" type="password" name="password-confirm" id="password-confirm" placeholder=" "
							autocomplete="new-password" autocapitalize="off" aria-required="true"
							aria-describedby="password-confirm-notify" />
						<label for="password-confirm">[[register:confirm-password]]</label>
						<span class="register-feedback text-xs text-danger" id="password-confirm-notify" aria-live="polite"></span>
					</div>

					{{{ each regFormEntry }}}
					<div class="mb-2 regFormEntry d-flex flex-column gap-2 {./styleName}">
						<label for="{./inputId}">{./label}</label>
						<div>{{./html}}</div>
					</div>
					{{{ end }}}

					<button class="btn btn-primary w-100" id="register" type="submit">
						[[register:register-now-button]]
					</button>

					<div class="alert alert-danger{{{ if !error }}} hidden{{{ end }}}" id="register-error-notify" role="alert"
						aria-atomic="true">
						<strong>[[error:registration-error]]</strong>
						<p class="mb-0">{error}</p>
					</div>

					<hr />

					<span class="text-sm">[[register:already-have-account]]</span>
					<a class="btn btn-outline-dark w-100" href="{config.relative_path}/login">[[global:login]]</a>

					<input id="token" type="hidden" name="token" value="" />
					<input id="noscript" type="hidden" name="noscript" value="true" />
					<input type="hidden" name="_csrf" value="{config.csrf_token}" />
				</form>
			</div>
		</div>
	</div>

	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
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
					window.sessionStorage.setItem("redirectAfterLogin", "https://swimstandards.com/account?from=register");
				}
			}
		} catch (err) {
			console.warn("redirectAfterLogin error", err);
		}
	})();
</script>