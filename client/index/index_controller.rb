class IndexController < Controller
  template 'client/index/index.html.erb'
  attr_reader :links

  def track
    Meteor.subscribe :links
    @links = Links.find({})
    p @links.fetch
  end
end