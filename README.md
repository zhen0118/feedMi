# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
	ruby-2.3.3

* System dependencies

* Configuration

* Database
  gem install mysql2
  
  Follow this link
  https://www.digitalocean.com/community/tutorials/how-to-use-mysql-with-your-ruby-on-rails-application-on-ubuntu-14-04

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#Setup Instructions

1. Installing Ruby on Rails with RVM

Follow this link:
https://www.digitalocean.com/community/tutorials/how-to-install-ruby-and-set-up-a-local-programming-environment-on-ubuntu-16-04

TL;DR:

* gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
* \curl -sSL https://get.rvm.io | bash -s stable --rails
* restart shell
* rvm install 2.3.3
* gem install rails -v 5.1.1

2. Install Node.js(if needed to download dependency packages)
* sudo apt-get install build-essential
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
* bundle install
* nvm install stable

3. Setup MySQL
* sudo apt install mysql-server
* sudo service mysql start

4. Database setup
* rake:db create
* bin/rails db:migrate RAILS_ENV=development