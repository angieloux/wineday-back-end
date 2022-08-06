# Web App: WineDay (backend)

This repo contains the back-end for a fictional wine e-commerce store built for a fictional business: WineDay. It was developed with Ruby on Rails and deployed on Heroku.

The other relavant repos can be found here:

- [Frontend](https://github.com/angieloux/wineday-front-end) (created with Ruby on Rails, hosted on heroku)
- [Planning documentation](https://github.com/angieloux/wineday-docs) (which can also be found at the bottom of this document, for reference).

# Local installation

If you would like to install a local copy of this web app, you will also need to locally host the Ruby on Rails back end server (instructions can be found in the [front-end repo](https://github.com/angieloux/wineday-front-end)).

Clone the repo:

    git clone git@github.com:angieloux/wineday-back-end.git

Navigate to the correct directory you just cloned:

    cd wineday-back-end

This app uses PostgreSQL. If you don't have this installed, please follow the docs to do so before continuing.

If you have ruby installed (this app was created with v2.7.5p203), install bundler

    gem install bundler

Install dependencies/gems:

    bundle install

## Initialize the database

Once you have PSQL installed, create the db:

    bundle exec rails db:create

Migrate the db:

    bundle exec rails db:migrate

Seed the db with example data:

    bundle exec rails db:seed

## Run the app

Start the server in development mode:

    bundle exec rails s

# Testing

Unit testing has been designed with rspec to test various functions of the app. See these in action with:

    rspec

There are also manual request tests done within client.http
