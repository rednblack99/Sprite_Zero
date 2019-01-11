## Singletons Dating App
------------------------

A dating app for Makers to meet their one true pair partner.

## MVP
-------

A user can sign in and create a dating profile

## User Stories
---------------
```
As a user
So I can begin my search for my one true pair partner
I can visit the Singletons homepage

As a user
So I can have my own Singletons profile
I can submit my details and signup from the homepage

As an admin
So I can ensure user passwords are of 8 characters or more
A user cannot submit a password with less than 8 characters

As a user
So I know that my account is unique
I cannot create two accounts with the same email

As a user
So I can make sure nobody accesses my account when I'm away from my computer
I can logout from my profile

As an admin
To keep user passwords secure
User passwords are stored as an encrypted key

As a user
So that I am safe
I cannot create an account if I am under 16 years old

As an admin
So I have the information I need to create a new user
A User cannot ommit any details when signing up to Singletons.

As a user
So my profile displays my name
I can submit my name details

As a user
So my profile displays my age
I can submit my age details

As a user
So my profile displays my interests
I can submit my interests

As a user
So my profile has a link to a photo
I can submit a URL link

As a user
So my profile has a description
I can submit a description

As a user
So my profile displays my availability
I can submit my availability

As a user
So I can keep my profile details current
I can update any of them

As a user
So I can leave Singletons if I want to
I can delete my profile page and account

As an admin
So non-Singletons cannot view User's profiles
They must have an account

As a user
So I can search for my one true pair partner
I can view all other Singletons on one page

As a user
So I can find out more about potential matches
I can view other Singletons profiles
```

## Requirements and Setup
--------

- Requirements:

 1. Ruby and RVM, please see https://rvm.io/rvm/install for installation instructions
 2. PostgreSQL, please see http://www.postgresqltutorial.com/install-postgresql/ for installation instructions

- Setup:

Once your system has the above requirements installed, from your command line move to your project directory and run the following commands.

 1. To clone the repo:

```
 git clone git@github.com:rednblack99/singletons_app.git
 cd singletons_app
 bundle
```

 2. To set up the databases and database tables:

 ```
 psql
 CREATE DATABASE singleton_development;
 CREATE DATABASE singleton_test;
 \q
 rake db:auto_migrate RACK_ENV=test
 rake db:auto_upgrade
```

 3. Run locally:

```
 rackup
```

 4. Visit Singleton on your browser!

#### Approach-
--------------
