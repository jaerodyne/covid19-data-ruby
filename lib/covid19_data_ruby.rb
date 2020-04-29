require 'covid19_data_ruby/version'
require 'json'
require 'net/http'

class Covid19Data
  BASE_URL = 'https://coronavirus-tracker-api.herokuapp.com/v2/'.freeze
  DEFAULT_SOURCE = 'jhu'.freeze

  class << self
    def get_sources
      uri = URI("#{BASE_URL}sources")
      get_json_data(uri)
    end

    def get_latest(source: DEFAULT_SOURCE)
      uri = URI("#{BASE_URL}latest?source=#{source}")
      get_json_data(uri)
    end
  
    def get_all_locations(source: DEFAULT_SOURCE)
      uri = URI("#{BASE_URL}locations?source=#{source}")
      get_json_data(uri)
    end
      
    def find_by_country_code(country_code, with_timelines: false, source: DEFAULT_SOURCE)
      timelines = with_timelines ? '&timelines=true' : ''
      uri = URI("#{BASE_URL}locations?country_code=#{country_code.upcase}#{timelines}&source=#{source}")
      get_json_data(uri)
    end

    def find_by_location(id, source: DEFAULT_SOURCE)
      uri = URI("#{BASE_URL}locations/#{id}?source=#{source}")
      get_json_data(uri)
    end
    
    private

    def get_json_data(uri)
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end
  end
end
