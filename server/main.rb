Links.remove

Links.insert({ title: "whatever" }) do |err, res|
  p err, res
end

p Links.find({}).fetch