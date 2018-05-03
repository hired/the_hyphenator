# TheHyphenator

Despite the lack of evidence, SEO experts will tell you that you need to have hyphenated URLs for better SEO. Google also recommends hyphens at https://support.google.com/webmasters/answer/76329?hl=en.

Unfortunately Rails doesn't give us a way to generate hyphenated URLs, so we built one for you.

Just install the gem and all declared URLs will be transformed to use hyphens:

```ruby
get '/my_routes', to: 'home#index' # generates a GET enabled route at /my-routes
post '/my_route/:route_id/new', as: :new_route # generates a POST enabled route at /my-route/:route_id/new named 'new_route_path'
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'the_hyphenator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install the_hyphenator

## Usage

Just install the gem.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hired/the_hyphenator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TheHyphenator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hired/the_hyphenator/blob/master/CODE_OF_CONDUCT.md).
