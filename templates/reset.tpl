<div class="flex-fill">
	<div class="container-lg px-3" style="max-width: 420px; margin: 0 auto;">

		<div class="alert alert-info">
			[[reset_password:enter-email]]
		</div>

		<div class="card card-body bg-light">

			<div class="alert alert-success alert-dismissible hide" id="success">
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
				[[reset_password:password-reset-sent]]
			</div>

			<div class="alert alert-danger alert-dismissible hide" id="error">
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
				[[reset_password:invalid-email]]
			</div>

			<form onsubmit="return false;">
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="email" placeholder=" " autocomplete="off" required>
					<label for="email">[[reset_password:enter-email-address]]</label>
				</div>

				<div class="d-grid">
					<button class="btn btn-primary btn-sm" id="reset" type="submit">[[reset_password:reset-password]]</button>
				</div>
			</form>

		</div>
	</div>
</div>