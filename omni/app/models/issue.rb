require 'Nokogiri'

class Issue

  attr_accessor :project_i, :tracker, :status, :priority, :author_i, :assigned_to, :subject, :start_date, :done_ratio

  def initialize(attrs = {})
    self.project_i = attrs.xpath("./project/@name").text
    self.tracker = attrs.xpath("./tracker/@name").text
    self.status = attrs.xpath("./status/@name").text
    self.priority = attrs.xpath("./priority/@name").text
    self.author_i = attrs.xpath("./author/@name").text
    self.assigned_to = attrs.xpath("./assigned_to/@name").text
    self.subject = attrs.xpath("./subject").text
    self.start_date = attrs.xpath("./start_date").text
    self.done_ratio = attrs.xpath("./done_ratio").text
  end
end
