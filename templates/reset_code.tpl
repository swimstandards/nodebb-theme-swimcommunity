<div class="flex-fill">
	<div class="container-lg px-3" style="max-width: 420px; margin: 0 auto;">

		{{{ if valid }}}
		<div class="card card-body bg-light">

			{{{ if displayExpiryNotice }}}
			<div class="alert alert-warning">
				[[reset_password:password-expired]]
			</div>
			{{{ end }}}

			<div class="alert alert-success alert-dismissible hidden" id="success">
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
				<strong>[[reset_password:password-changed.title]]</strong>
				<p>[[reset_password:password-changed.message]]</p>
			</div>

			<div class="alert alert-warning hidden" id="notice">
				<strong></strong>
				<p></p>
			</div>

			<form onsubmit="return false;" id="reset-form">
				<div class="form-floating mb-3">
					<input class="form-control" type="password" id="password" placeholder=" " />
					<label for="password">[[reset_password:new-password]]</label>
				</div>

				<div class="form-floating mb-3">
					<input class="form-control" type="password" id="repeat" placeholder=" " />
					<label for="repeat">[[reset_password:repeat-password]]</label>
				</div>

				<div class="d-grid">
					<button class="btn btn-primary btn-sm" id="reset" type="submit">[[reset_password:reset-password]]</button>
				</div>
			</form>
		</div>
		{{{ else }}}
		<div class="card">
			<div class="card-header">
				<h5 class="mb-0">[[reset_password:wrong-reset-code.title]]</h5>
			</div>
			<div class="card-body">
				<p>[[reset_password:wrong-reset-code.message]]</p>
			</div>
		</div>
		{{{ end }}}
	</div>
</div>