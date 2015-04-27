OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '942570592431260', 'ae723f152ec3a79106eaab8c254dee4f', scope: 'public_profile, user_friends'
end
