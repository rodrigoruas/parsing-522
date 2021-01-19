require 'open-uri'
require 'nokogiri'

require 'byebug'

url = "https://www.bbcgoodfood.com/search/recipes?q=chocolate"

#1 get the html string
html_string = open(url).read

#2  Use Nokogiri gem to transform the HTML in something that we search/filter
# require 'nokogiri'
#Nokogiri::XML object

html_doc = Nokogiri::HTML(html_string)

# searching for ALL elements that share the class name
html_doc.search(".standard-card-new__article-title").each do |element|
  # element # --> return  Nokogiri::XML elements.

  # puts element # --> return  html element =)

  puts element.text
end

