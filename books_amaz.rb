require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  url = "./data_bank/book1.html"

  @data = Nokogiri::HTML(open(url))

  erb :index
end








  
  # @book = {}

  # @book['data_bank_id'] = data.url[/\d/]
  # @book['title'] = data.css("a strong")[0].children.text.strip
  # @book['author'] = data.css("meta[name='description']")[0].attributes["content"].value[/(?<=\[)[^\]]+(?=\])/]
  # @book['price'] = data.css('.bb_price').text.strip
  # @book['shipping_weight'] = data.css('.content ul li[7]').text.strip.split(": ")[1][/\d.\d/]
  # @books['isbn-10'] = data.css("link[rel='canonical']")[0].attributes['href'].value.split("/").last