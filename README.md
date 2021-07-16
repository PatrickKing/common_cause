# Common Cause

## Prerequisites

- Docker with docker-compose

## Dev Setup

- clone to `common_cause`
- create a peer folder at the same level, `common_cause_db`
- `docker-compose -f dev.docker-compose.yml` up -d db
- make database development user account
  * `CREATE USER common_cause;`
  * `ALTER USER common_cause PASSWORD 'password';`
  * `ALTER USER common_cause WITH SUPERUSER;`
- do database setup
  `docker-compose -f dev.docker-compose.yml run web rails db:create`
- `docker-compose -f dev.docker-compose.yml up web`

- TODO: add a sample plaintext config file to be copied over the encrypted file
- TODO: command to create a new rails credential encryption key



## Docker Commands

`docker-compose up --build` - Partial rebuild, for dockerfile changes only

`docker-compose run web bundle install` - Full rebuild, for updated gems



# README

This README would normally document whatever steps are necessary to get the
application up and running.

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
