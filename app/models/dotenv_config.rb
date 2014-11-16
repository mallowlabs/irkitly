class DotenvConfig
  class << self
    def devise_secret_key
      ENV['DEVISE_SECRET_KEY'] || ''
    end

    def omniauth_provider
      provider = ENV['OMNIAUTH_PROVIDER']
      if provider
        provider.to_sym
      else
        :github
      end
    end

    def omniauth_args
      args = ENV['OMNIAUTH_ARGS']
      if args
        JSON.parse(args)
      else
        nil
      end
    end
  end
end
