## Cov19Data-Ruby

A Ruby wrapper for the [Coronavirus Tracker API](https://github.com/ExpDev07/coronavirus-tracker-api), which takes data directly from the [Coronavirus (nCoV) Data Repository](https://github.com/CSSEGISandData/COVID-19), provided by Johns Hopkins University Center for Systems Science and Engineering (JHU CSSE).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'covid19_data_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install covid19_data_ruby

## Usage

Get the latest amount of total confirmed cases, deaths, and recoveries globally:
```ruby
Covid19Data.get_latest
```

Get case data for all locations with reported cases:
```ruby
Covid19Data.get_all_locations
```

Find case data by [country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) with an optional argument to include timelines:
```ruby
Covid19Data.find_by_country_code('US', true)
```

Find case data by location:
```ruby
Covid19Data.find_by_location(id)
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
