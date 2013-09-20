require 'Nokogiri'

class New

  attr_accessor :project, :author, :title, :summary, :description, :created_on

  def initialize(attrs = {})
    #News
    self.project = attrs.xpath("./project/@name").text
    self.author =  attrs.xpath("./author/@name").text
    self.title = attrs.xpath("./title").text
    self.summary = attrs.xpath("./summary").text
    self.description = attrs.xpath("./description").text
    self.created_on = attrs.xpath("./created_on").text
  end
end
