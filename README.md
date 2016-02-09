# Testbed for WiceGrid

The aim of this repository is to test the integration of the
[wice_grid](https://github.com/leikind/wice_grid) gem in the different version
of the [Rails](http://rubyonrails.org).

# How to use the repository

## Git

```
$ git clone git://github.com/leikind/wice_grid_testbed.git
$ cd wice_grid_testbed
$ git submodule init
$ git submodule update
```

## Rails

### Rails 2

WARNING: The Rails 2 branch is no more maintained. You can use it but keep in
mind that the branch is outdated.

```
$ git checkout rails2
```

### Rails 4

The `master` branch contains the Rails 4 integration so you're already on the
right branch.

## Bundle & WiceGrid

```
$ bundle
$ bundle exec 'rake db:create'
$ bundle exec 'rake db:migrate'
$ bundle exec 'rake db:seed'
$ rails g wice_grid:install
```

## Run the application

In case you want to run the application on your machine, run the following
command:

```
$ rails s
```

Then open the URL http://localhost:3000/ in your favorite web browser.

## Run the tests

Be sure to have Firefox installed first, then run the following command :

```
$ bundle exec rake
```

A Firefox instance will be fired and the tests are going to be executed in it.
