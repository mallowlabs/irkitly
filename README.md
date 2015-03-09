IRKitly
===============================

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Overview
-------------------------------

A web interface for [IRKit](http://getirkit.com/).

Setup
-------------------------------

copy dot.env to .env, and edit it.

#### DEVISE\_SECRET\_KEY

Generate secret key

```
bundle exec rake secret
```

#### OMNIAUTH\_PROVIDER, OMNIAUTH\_ARGS

You need to set environment variables as follows:
```
OMNIAUTH_PROVIDER=github
OMNIAUTH_ARGS="['GITHUB_API_KEY','GITHUB_SECRET']"
```

#### run

    $ bundle install --path .bundle
    $ bundle exec rake db:migrate
    $ bundle exec rails s

Usage
-------------------------------
Generate .irkit.json with [irkit gem](http://rubygems.org/gems/irkit).
And put .irkit.json to IRKitly.

License
-------------------------------
[The MIT License (MIT)](http://opensource.org/licenses/mit-license)
Copyright (c) 2014 mallowlabs
