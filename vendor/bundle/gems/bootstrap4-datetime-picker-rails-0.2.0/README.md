# bootstrap4 datetime picker rails

Makes [Tempus Dominus](https://github.com/tempusdominus/bootstrap-4) available to your rails appliation through the asset pipeline.

## Usage Instructions

Add the following to your `Gemfile` and then run `bundle`

`gem 'bootstrap4-datetime-picker-rails'`

Add the following to `application.js`

```
//= require moment
//= require tempusdominus-bootstrap-4.js
```

Add the following to `application.scss`

`@import "tempusdominus-bootstrap-4.css";`

## Update Instructions
Change the `checkout_branch` variable in `Rakefile` to the version.

Change the versions in `lib/bootstrap4_datetime_picker_rails/version.rb`

Run  `bundle exec rake update`

Commit with 'Update to $VERSION release'

Run `git push`

Run `bundle exec rake build` to confirm a successful build

Run `bundle exec rake publish` to publish to rubygems (automatically creates and pushes a tag to git)

Create a release on GitHub with the new gem version
