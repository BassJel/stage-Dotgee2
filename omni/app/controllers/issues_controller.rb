require 'httparty'
require 'nokogiri'

class IssuesController < ApplicationController

  def index
    resp2 = HTTParty.get("http://localhost:3000/issues.xml?assigned_to_id=#{current_user.uid}")
    doc = Nokogiri::XML(resp2.body) 
    issues = doc.xpath("/issues/issue") #parent node
    @issues = [] 
    issues.each do |is|
      @issues << Issue.new(is)
    end
  end
end 
