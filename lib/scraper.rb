require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open('./fixtures/student-site/index.html')
    doc = Nokogiri::HTML(html)
    student_names = doc.css(".student-name").text
    student_locations = doc.css(".student-location").text
     puts student_link = doc.css(".student-card").css("a")
    #name class .student-name
    #location class .student-location
    #first a tag within .student-card class

  end

  def self.scrape_profile_page(profile_url)

  end

end
