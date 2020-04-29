require 'spec_helper'

RSpec.describe Covid19Data, vcr: true do
  describe '.get_sources' do
    it 'returns the data sources for the API' do
      response = subject.class.get_sources
  
      expect(response).to_not be_empty
      expect(response).to have_key('sources')
    end
  end

  describe '.get_latest' do
    it 'returns the latest data' do
      response = subject.class.get_latest
  
      expect(response).to_not be_empty
      expect(response).to have_key('latest')
    end
  end

  describe '.get_all_locations' do
    it 'returns all locations' do
      response = subject.class.get_all_locations
  
      expect(response).to_not be_empty
      expect(response).to have_key('locations')
    end
  end

  describe '.find_by_country_code' do
    let(:us_country_code) { 'US' }

    it 'returns data for a country' do
      response = subject.class.find_by_country_code(us_country_code)
  
      expect(response).to_not be_empty
      expect(response).to have_key('locations')
      expect(response.dig('locations').detect { |info| info['country_code'] == us_country_code }).not_to be_nil
    end

    it 'returns data for a country with timelines' do
      response = subject.class.find_by_country_code(us_country_code, with_timelines: true)
  
      expect(response).to_not be_empty
      expect(response).to have_key('locations')
      expect(response.dig('locations').detect { |info| info['timelines'] }).not_to be_nil
    end
  end

  describe '.find_by_location' do
    it 'returns a location' do
      response = subject.class.find_by_location(134)
  
      expect(response).to_not be_empty
      expect(response.dig('location')).to have_key('timelines')
    end
  end
end