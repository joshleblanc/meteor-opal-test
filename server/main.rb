class Meteor
  def self.server?
    `Meteor.isServer`
  end
end

if Meteor.server?
  p "Hello Serve"
end

