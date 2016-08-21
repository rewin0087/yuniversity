require "yuniversity/version"
require 'json'
require 'countries'

module YUniversity
  RAW = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'yuniversity', 'data', 'universities.json')))

  ALL = RAW.map{|u| u['name']}.flatten

  COUNTRIES = ::ISO3166::Country.all.map{|d| d.data['name']}
end
