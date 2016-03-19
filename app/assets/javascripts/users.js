$(document).ready(function() {
	Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
	// Watch for a form submission
	$('#form-submit-btn').click(function(event) {
		event.preventDefault();
		$('input[type=submit]').prop('disabled', true);
		var error = false;
		var ccNum = $('#card_number').val(),
			cvcNum = $('#card_code').val(),
			expMonth = $('#card_month').val(),
			expYear = $('#card_year').val();

		if(!error) {
			// Get Stripe Token
			Stripe.createToken({
				number: ccNum,
				cvc: cvcNum,
				exp_month: expMonth,
				exp_year: expYear
			}, stripeResponseHandler);
		}
		return false;
	}); // form submission

	function stripeResponseHandler(status, response){
		// Get reference to form
		var f = $('#new_user');

		// Get token from response
		var token = response.id;

		// Add token to form
		f.append('<input type="hidden" name="user[stripe_card_token]" value="' + token + '"/>');

		// Submit form
		f.get(0).submit();
	}
});