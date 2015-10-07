require "university/version"
require 'yaml'

module University
  RAW = YAML.load_file(File.join(File.dirname(__FILE__), 'university', 'data', 'universities.yml'))

  ALL = RAW.map{|c| c['schools']}.flatten

  COUNTRIES = RAW.map{|c| c['name']}.flatten

  NAMES = ALL.map{|u| u['name']}

  def self.by_country(country)
    ALL.select{|c| c['country'].downcase.match(country.downcase)}
  end
end
