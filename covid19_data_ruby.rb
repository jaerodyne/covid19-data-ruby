require 'net/http'

class Covid19Data < ActiveRecord::Base
  BASE_URL = 'https://coronavirus-tracker-api.herokuapp.com/v2/'

  class << self
    def get_latest
      uri = URI(BASE_URL + 'latest')
      get_json_data(uri)
    end
  
    def get_all_locations
      uri = URI(BASE_URL + 'locations')
      get_json_data(uri)
    end
      
    def find_by_country_code(country_code, with_timelines=false)
      timelines = with_timelines ? '&timelines=true' : ''
      uri = URI("#{BASE_URL}locations?country_code=#{country_code.upcase}#{timelines}")
      get_json_data(uri)
    end

    def find_by_location(id)
      uri = URI("#{BASE_URL}locations/#{id}")
      get_json_data(uri)
    end
    
    private

    def get_json_data(uri)
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end
  end
end
