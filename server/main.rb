Meteor.publish :links do
  Links.find({})
end

Links.remove

Links.insert({ title: "whatever" }) do |err, res|
  p err, res
end