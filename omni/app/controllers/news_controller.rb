require 'nokogiri'
require 'httparty'

class NewsController < ApplicationController

  def index
    resp = HTTParty.get("http://localhost:3000/news.xml?assigned_to=me")
    doc = Nokogiri::XML(resp.body)
    news = doc.xpath("/news/news") #parent node
    @news = [] 
    news.each do |n|
      @news << New.new(n)
    end
  end
end
