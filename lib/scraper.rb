require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open('./fixtures/student-site/index.html')
    doc = Nokogiri::HTML(html)
    student_names = doc.css(".student-name").map{|name| name.text}
    student_locations = doc.css(".student-location").map{|location| location.text}
    student_links = doc.css(".student-card").css("a").map{|link| link['href']}
    puts student_names
  end

  def self.scrape_profile_page(profile_url)

  end

end
