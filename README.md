IRKitly
===============================

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Overview
-------------------------------

A web interface for [IRKit](http://getirkit.com/)

Setup
-------------------------------

copy dot.env to .env, and edit it.

#### DEVISE\_SECRET\_KEY

Generate secret key

```
bundle exec rake secret
```

#### OMNIAUTH\_PROVIDER, OMNIAUTH\_ARGS

For example, omniauth-github needs an initializer as follows:
```ruby
Devise.setup do |config|
  config.omniauth :github, 'GITHUB_API_KEY', 'GITHUB_SECRET'
end
```

then you should set environment variables as follows:
```
OMNIAUTH_PROVIDER=github
OMNIAUTH_ARGS="['GITHUB_API_KEY','GITHUB_SECRET']"
```

See [config/initializers/devise.rb](https://github.com/codefirst/vertex/blob/master/config/initializers/devise.rb)

#### run

    $ bundle install --path .bundle
    $ bundle exec rake db:migrate
    $ bundle exec rails s

Usage
-------------------------------
You can generate .irkit.json with [irkit gem](http://rubygems.org/gems/irkit).
And you can put .irkit.json to IRKitly.

License
-------------------------------
[The MIT License (MIT)](http://opensource.org/licenses/mit-license)
Copyright (c) 2014 mallowlabs
