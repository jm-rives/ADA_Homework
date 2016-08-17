# Hashes, classes
#### HASHES, CLASSES & YOU ####

### Hash review:
people = [
  { name: "Jamie", email: "jamie@adadevelopersacademy.org" },
  { name: "Chris", email: "chris@adadevelopersacademy.org" }
]
# works
#puts people[1][:email]

  #A hash has key value pairs. Often the keys are symbols, values can be any type
jamie_info = { jamie: # this is the key
              # this entire hash is the value
              { last_name: "Pilgrim",
                first_name: "Jamie",
                address: {
                street: "123 fake st",
                city: "Seattle",
                state: "WA"
                },
                pets: [
                  { name:    "Amper",
                    species: "tabby cat"
                  },
                  { name:    "Octo",
                    species: "mini puma"
                  }
                ]
              }
            }
# nope didn't werk' # puts jamie[:pets][0][:name][1][:name]
# nope didn't werk # puts jamie[:pets][:name]
# better, but not desired # puts jamie[:jamie][:pets]
# counts the depth
puts jamie_info[:jamie][:pets][0][:name] # werks
# need loop to get both names
jamie_info.each do |k, v|
  pets.each do |i|
    puts "#{value}"
  end
end

jamie_info.[:jamie_info][:pets] each do |pet|
  puts [:name]
end




            #How do I find the name's of Jamie's pets?

### Let's setup an Address class
# class Address
#   attr_accessor :first_name, :last_name, :street1, :street2, :city, :state, :zip_code
#
#   def initialize(first_name, last_name, street1, street2, city, state, zip_code)
#   # intialize instance variables to store data
#     @first_name = first_name
#     @last_name = last_name
#     @street1 = street1
#     @street2 = street2
#     @city = city
#     @state = state
#     @zip_code = zip_code
#     puts " You have a new address!"
#   end
# end
#
# user1 = Address.new("Joanna", "Rives", "1200 Western AVE", "apt 1", "Seattle", "washington", "98101")
#
# puts user1.zip_code
# puts user1.first_name #chaining dosen't work

# ### Let's refactor the Address class to accept a hash as parameters instead
# class Address
#   # don't forget attr_accessor/ or reader
#   attr_accessor :first_name, :last_name, :street1, :street2, :city, :state, :zip_code
#
#   def initialize(address_hash)
#   # intialize instance variables to store data
# =>  @address_hash = address_hash # will add everythign in pass in entire hash
#     @first_name = address_hash[:first_name]
#     @last_name = address_hash[:last_name]
#     @street1 = address_hash[:street1]
#     @street2 = address_hash[:street2]
#     @city = address_hash[:city]
#     @state = address_hash[:state]
#     @zip_code = address_hash[:zip_code]
#     puts " You have a new address!"
#   end
# end
#
# a1 = Address.new(first_name: "Jamie",last_name: "Pilgrim", street1: "1200 Western AVE", street2: "APT 1200", city: "Seatte", state: "washington", zip_code: "98101")
#
# puts a1.first_name #works





### Why do it this way?




### More Practice: Setup a person class that also takes in a hash argument. That hash argument should have at least one address that is an Address object.
