# README

This is a basic rails app.

It only has models, with common entity relationships for practice. Nothing more.

## Getting Started

### Prerequisites

- ruby
  - you can use [rbenv](https://github.com/rbenv/rbenv) for Ruby version control.
  - for modern versions, RubyGem and Bundler are installed with Ruby. You will be able to install gems (dependencies) on the fly
- SQLite Database

for Mac users with [homebrew](https://brew.sh)

```sh
# install rbenv. You might need to open new terminal after installation.
brew install rbenv
rbenv init

# install ruby. Please check the version with `.ruby-version` file in this project
rbenv install {version}

# install SQLite
brew install sqlite
```

### Dependencies and Configuration

```sh
cd path/to/this/dir

# Bundler installs all required gems
bundle install

# Check that Rails is installed with Bundler
rails --version

# Run database migrations to load the schema into your SQLite database
rails db:migrate
```

### Let's Play!

You can now open rails console to explore the app

```sh
rails c
```

You can also run the rails server. However, without views or controllers, it won’t display anything useful in the browser yet.

```sh
rails server
```

## ER diagram

![](./docs/images/erd.png)

This is what the model structure looks like.

Made with plantUML text in `docs/erd.puml`

## TODO

You can play with this app however you want. Here are some ideas:

- Complete controllers
- Add frontend
  - Rails views
  - Other frontend frameworks (e.g., React, Vue)
- Write tests
  - Built-in Rails tests or RSpec
  - Use FactoryBot for factories
- Add or modify models
  - Make DB migrations
- Switch database
  - Change from SQLite to MySQL or PostgreSQL
- Implement authentication and authorization
- Explore background jobs
  - Use ActiveJob or Sidekiq for async processing
