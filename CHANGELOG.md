# All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [1.0.0](https://rubygems.org/gems/covid19_data_ruby/versions/1.0.0) - 2020-05-17

### Changed

- Backfill changelog for previous releases.

### Added

- Added Gemfile and development dependencies.
- Added CircleCI pipeline and configure to rebuild on each push and publish new gem version if tagged.

## [0.1.0](https://rubygems.org/gems/covid19_data_ruby/versions/0.1.0) - 2020-04-08

### Changed

- **BREAKING:** Added additional optional named argument `with_timelines` to `Covid19Data.find_by_country_code`.  
If `with_timelines` is true, please update with named argument `with_timelines: true`.

### Added

- Added `Covid19Data.get_sources` method.
- Added `source` as an argument for methods to use `'jhu'` as a data source by default.

## [0.0.1](https://rubygems.org/gems/covid19_data_ruby/versions/0.0.1) - 2020-03-19

### Added

- Initial working release.

## 0.0.0 - 2020-03-19 [YANKED]

- Yanked because gem was non-functional.