Rails.configuration.stripe = {
  :publishable_key => ENV['
pk_test_N4nIqBQsA8Brn1ComDNI1ck7'],
  :secret_key      => ENV['
sk_test_PVBIthaoYbz9KbVAn2Ti0P0x']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
