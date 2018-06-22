require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index.html)
    doc = Nokogiri::HTML(html)
    binding.pry
    #name class .student-name
    #location class .student-location
    #first a tag within .student-card class

  end

  def self.scrape_profile_page(profile_url)

  end

end
