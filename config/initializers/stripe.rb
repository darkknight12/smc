unless Rails.env.development?
Rails.configuration.stripe = { 
  :publishable_key => 'pk_test_qN9mOmZV0e2wAFRNpbIPvn6u', 
  :secret_key => 'sk_test_CUsoGvy6un4BVpgG6vMMVr94'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]