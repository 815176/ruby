contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = {
  "Joe Smith" => {},
  "Sally Johnson" => {}
}

fields = [:email, :address, :phone]

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts.each_with_index do | (name, info), index |
  fields.each do | field |
    info[field] = contact_data[index].shift
  end
end

p contacts