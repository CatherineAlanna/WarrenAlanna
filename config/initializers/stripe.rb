if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_0rAwHMjCRG1D9zx2b5GbRu9R',
    secret_key: 'sk_test_5RP3MCMyrl4GYnPIaKDYpmcG'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]