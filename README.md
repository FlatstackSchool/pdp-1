# PDP I

[![Build Status](https://semaphoreapp.com/api/v1/projects/31b68af8b073708a56e4e005bbcba2af4802816d/76140/shields_badge.png)](https://semaphoreapp.com/fs/rails-base)
[![Test Coverage](https://codeclimate.com/github/fs/rails-base/badges/coverage.svg)](https://codeclimate.com/github/fs/rails-base)
[![Code Climate](https://codeclimate.com/github/fs/rails-base.png)](https://codeclimate.com/github/fs/rails-base)

## Project description

* User can sign up.
* User can sign in.
* User can recover his/her password.
* User can sign out.
* User can upload profile picture.
* User can create an article with necessary fields: Title, Text.
* Users can observe articles on main page of project.
* Users can leave comments to articles with single Text field.
* User can edit article created by this user.
* User can send Email via Contact form.
* User can view About Us page.

## Dependencies

* PostgreSQL 9.3
* Ruby 2.2.3
* PhantomJS
* Rails 4

Setup required dependencies from `Brewfile`:
```bash
brew tap Homebrew/bundle
brew bundle
```

## Quick Start

```bash
# clone repo
git clone git@github.com:account/repo.git
cd repo

# run setup script
bin/setup

# configure ENV variables in .env
vim .env

# run server on 5000 port
bin/server
```

## Scripts

* `bin/setup` - setup required gems and migrate db if needed
* `bin/quality` - run brakeman and rails_best_practices for the app
* `bin/ci` - should be used in the CI to run specs

## Staging

* http://fs-rails-base.herokuapp.com

## Production

* http://fs-rails-base.herokuapp.com
