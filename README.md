## Covid19Data-Ruby

A Ruby wrapper for the [Coronavirus Tracker API](https://github.com/ExpDev07/coronavirus-tracker-api), which by default takes data directly from the [Coronavirus (nCoV) Data Repository](https://github.com/CSSEGISandData/COVID-19), provided by Johns Hopkins University Center for Systems Science and Engineering (JHU CSSE). An alternative data source pulls from U.S. County data that comes from the Conference of State Bank Supervisors.

This gem uses [semantic versioning](https://semver.org/) to communicate the nature of the changes for each release.

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
Get an array of the latest data sources, which you can later pass in as an optional argument to all the other class methods:
```ruby
Covid19Data.get_sources
=> {"sources"=>["jhu", "csbs"]}
```

By default, the source for each of the following methods is set to 'jhu'. If you want to use U.S. county data instead, use 'csbs'.

Get the latest amount of total confirmed cases, deaths, and recoveries globally:
```ruby
Covid19Data.get_latest
# optional source argument
Covid19Data.get_latest(source: 'csbs')
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
