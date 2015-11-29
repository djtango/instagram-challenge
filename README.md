Instagram Challenge
===================

Installation
-------
Clone this repo using:
```
$ git clone git@github.com:djtango/instagram-challenge.git
```

Then change into the project directory and run bundle to install the gems:

```
$ bundle
```

After bundling, the following rails command can be used to fire up the server:

```
$ bin/rails server
```

You will also need to generate the appropriate databases using this command:

```
$ bin/rake db:create
$ bin/rake db:create RAILS_ENV=test
$ bin/rake db:migrate 
$ bin/rake db:migrate RAILS_ENV=test
```
Technologies
---------

* Server Language: Ruby
* MVC Framework: Rails
* Database Language: PostgreSQL
* ORM: ActiveRecord
* Testing Framework: Rspec - Capybara - Poltergeist
* Front-End: JS-JQuery
* Sign-in Authentication: OAuth - Devise


User Stories
-------
```
As a new visitor
So I can personalise my experience on Deonstragram
I should be able to sign-up with Deonstagram
```

```
As a new visitor
So that I can sign-up quickly and safely
Deonstagram should enable sign-in with Facebook
```

```
As a user
Since Deonstagram is about sharing pictures
I should be able to upload my pictures
```

```
As a user
So I can discuss my thoughts on a picture
I should be able to post comments on pictures
```

```
As a user
So I can quickly express my approval of a picture
I should be able to D a photo
```


* Feel free to use Google, your notes, books, etc., but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
-----

Build Instagram: Simple huh!

Bonus if you can write your own set of sensible user stories!

As usual please start by

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan_october2015 (if you haven't already)
* Forking this repo. After cloning your fork and cd'ing into it, you'll need to [initialize a Rails app in the current directory](http://blog.jasonmeridth.com/posts/create-rails-application-in-current-directory/).

Your challenge is to build Instagram using Rails. You'll need **users** who can post **pictures**, write **comments** on pictures and **like** a picture. Style it like Instagram's website (or more awesome).

Bonus if you can add filters!
