Links.remove

Links.insert({ title: "whatever" }) do |err, res|
  p err, res
end

p Links.find({}).fetch

p Meteor.server?

Meteor.startup do
  p "Startup"
end

Meteor.methods({
    test: ->() do
      p "Running test method"
    end,
    test2: ->(a) do
      p "Running test2 method #{a}"
    end
})

Meteor.call(:test)
Meteor.call(:test2, 123) do |err, res|
  p err, res
end