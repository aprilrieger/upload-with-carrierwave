# README

Followed this [tutorial](https://medium.com/@dakota.lillie/uploading-files-using-carrierwave-in-rails-81ef54ebbcdb) to integrate and learn about the CarrierWave gem and how to configure.

Carrierwave gem documentation: https://github.com/carrierwaveuploader/carrierwave


## Install Dependancies (this is my step-by-step MacOS Ventura 13.0.1)

- Install Rails: `gem install rails -v 7.0.4`
- Install RVM: https://nrogap.medium.com/install-rvm-in-macos-step-by-step-d3b3c236953b
`brew install gnupg`
`\curl -sSL https://get.rvm.io | bash`
`rvm install 3.1.3`
- Install Sqlite3: `brew install sqlite`
- Install ImageMagick: `brew install imagemagick

git clone
cd upload-with-carrierwave
`bundle install`
`http://localhost:3000/`
`rails db:migrate`
`rails s`

To-Dos:
Fix the delete CRUD functionality
add gitignore
dockerize

Until I get to the next step of dockerizing this application, if I need to clean out, I would use this (should have in .gitignore):
```yaml
rm -rf tmp/*
rm -rf public/uploads/*
```

Things you may want to cover:

* Ruby version 

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
