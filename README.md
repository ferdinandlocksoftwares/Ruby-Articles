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


RSpec and Capybara

- Write out the scenario in a test file
-

First Step - Feature will fail!

- Build the features one by one till the test passes


Process for creating articles feature test and feature

- Create branch to do the development work
- Write feature test
- Build feature to make test pass one by one
- Once the feature test passes with no errors - merge with master branch

- Visit root page
- click on new article
- fill in title
- fill in body
- create article

Expectations:
- Article has been created
- articles path



Listing Article Feature Test
- create branch
- create 2 articles

Scenario
- list the two articles

Expectations
- expect both articles to display


Show article feature test
- create a branch
- create 1 article to display

- show article title and details


User Sign-up
- topic branch
- create spec

Signing up user
- visit root
- click sign-up link
- email
- password
- password confirmation

-sign-up

Invalid signup
- do invalid signup and make sure it fails


Association
Articles will belong to users
Users will own articles
User - 1 side of this
Articles - many

1 user can have many article
an article can only belong to 1 user
foreign key of user_id in the articles table

Steps:
- Create the spec


Restricting access
- Hide the "New Article" button from non-signed in users
- Hide the "Edit" and "Delete" from non-owners of the articles
- Permit the owners to edit or delete their own articles

Homework: Do the same access to the controller for delete 