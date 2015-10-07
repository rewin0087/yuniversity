require "yuniversity/version"
require 'yaml'

module YUniversity
  RAW = YAML.load_file(File.join(File.dirname(__FILE__), 'YUniversity', 'data', 'universities.yml'))

  ALL = RAW.map{|c| c['schools']}.flatten

  COUNTRIES = RAW.map{|c| {name: c['name'], code: c['iso_code']}}.flatten

  COUNTRY_NAMES = RAW.map{|c| c['name']}.flatten

  NAMES = ALL.map{|u| u['name']}

  def self.by_country(country)
    ALL.select{|c| c['country'].downcase.match(country.downcase)}
  end
end