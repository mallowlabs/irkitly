Devise.setup do |config|
  require 'devise/orm/active_record'
  config.secret_key = DotenvConfig.devise_secret_key
  config.sign_out_via = :delete
  case DotenvConfig.omniauth_args
  when NilClass
    config.omniauth DotenvConfig.omniauth_provider
  when Hash
    config.omniauth DotenvConfig.omniauth_provider, DotenvConfig.omniauth_args
  when Array
    config.omniauth DotenvConfig.omniauth_provider, *DotenvConfig.omniauth_args
  end
end
