# YUniversity

List of Worldwide universities.
Data source: webometrics.info

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yuniversity'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yuniversity

## Usage

    YUniversity::ALL

    YUniversity::COUNTRIES

    YUniversity::COUNTRY_NAMES

    YUniversity::NAMES

    YUniversity::RAW - for raw data
    
    YUniversity.by_country('philippines') - this will return all the schools from philippines.

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

