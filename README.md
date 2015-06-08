# &:conf

This is the Rails app for the &:conf (And Conf) conference. 

## Where is it?

The production app is deployed to Heroku. It lives at https://www.andconf.io
but you can also see it at https://andconf.herokuapp.com/.

## Setting up for your local development environment

We're using a branch & pull model.
```sh
git clone git@github.com:eanakashima/andconf.git
cd andconf
```

You'll need a version manager for Ruby. We recommend [rbenv](https://github.com/sstephenson/rbenv).
Make sure you have the correct version of ruby before installing the gems for this repo.
For rbenv, run: `rbenv install 2.1.2 && rbenv local 2.1.2`.

To verify your environment is set up correctly, run the server:
```sh
bundle
rails s
```
Visit [http://localhost:3000/](http://localhost:3000/) in the browser verify your success.
