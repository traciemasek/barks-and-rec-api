# Barks and Rec API

_Developed by Tracie Masek_

This is the backend API for the Barks and Rec animal adoption case management app. See the [Barks and Rec client repo][front] for more details and previews.

# Getting started

## Set up:

You will need `rails` and `bundle` installed on your computer in order to run this app. You will also need Postgres installed and running in order to create, migrate, and seed your database.

Please clone this repo down onto your local machine and navigate to that directory. Then run `bundle install` in order to install all of the necessary gems.

### JWT Secret

You'll need to create your own JWT secret to encode and decode the use authorization. In the root directory, create a `.env` file and add

```ruby
AUTH_SECRET='<secret-password>'
```
(_`<secret-password>`_ can be replaced with whatever you'd like)

## Start the server

Once you've created your `AUTH_SECRET` variable in the .env file run the following to create the Postgres database:

```rails db:create && rails db:migrate```

Next, to seed your database with a started pack of adoptable dogs and one Admin user with the username 'admin' and the password '1234' (very secure 🔐), run: 

```rails db:seed``` 

Finally:

**Start server on port 3001 to communicate with frontend: `rails s -p 3001`**

Then go ahead and follow the instructions to clone and run the [frontend repo][front]. 



[front]: https://github.com/traciemasek/barks-and-rec-client