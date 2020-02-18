class TestController < Controller
  template "client/test.html.erb"

  attr_reader :links

  def track
    Meteor.subscribe :links
    @links = Links.find({})
    p @links.fetch
  end
end
