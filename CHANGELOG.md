# All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## 0.1.0 - 2020-04-08

### Compatible changes

- Added `Covid19Data.get_sources` method.
- Added `source` as an argument for methods to use `'jhu'` as a data source by default.

### Breaking changes

- Added additional optional named argument `with_timelines` to `Covid19Data.find_by_country_code`.  
If `with_timelines` is true, please update with named argument `with_timelines: true`.
