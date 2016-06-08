# write your code here!
  #data = {
  #      :color => {
  #        :purple => ["Theo", "Peter Jr.", "Lucky"],
  #        :grey => ["Theo", "Peter Jr.", "Ms. K"],
  #        :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
  #        :brown => ["Queenie", "Alex"]
  #      },
  #      :gender => {
  #        :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
  #        :female => ["Queenie", "Ms. K"]
  #      },
  #      :lives => {
  #        "Subway" => ["Theo", "Queenie"],
  #        "Central Park" => ["Alex", "Ms. K", "Lucky"],
  #        "Library" => ["Peter Jr."],
  #        "City Hall" => ["Andrew"]


def nyc_pigeon_organizer(data)
  #new data structure to fill in
    #array of names
    names = data[:gender][:male] + data[:gender][:female]
    #["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky", "Queenie", "Ms. K"]
    
    initial_structure = names.each_with_object({}) do |name, initial_structure|
      #construct another hash where the keys are the attributes and the values are an array
      attributes = data.keys
      attributes_hash = attributes.each_with_object({}) do |attribute, attributes_hash|
        attributes_hash[attribute] = []
      end
      initial_structure[name] = attributes_hash
    end

    
    #{"Alex"=>{:color=>[], :gender=>[], :lives=>[]},
    #{}"Theo"=>{:color=>[], :gender=>[], :lives=>[]},
    #{}"Peter Jr."=>{:color=>[], :gender=>[], :lives=>[]},
    #{}"Andrew"=>{:color=>[], :gender=>[], :lives=>[]},
    #{}"Lucky"=>{:color=>[], :gender=>[], :lives=>[]},
    #{}"Queenie"=>{:color=>[], :gender=>[], :lives=>[]},
    #{}"Ms. K"=>{:color=>[], :gender=>[], :lives=>[]}}

#fill in data structure 
  #fill in color - reduce the problem
    #go through the list of colors - thought without coding
      #for each color, go through each pigeon
        #for each pigeon, add in respective color

data.keys.each_with_object(initial_structure) do |attribute, working_hash|
  #color => :purple
  #names => ["Theo", "Peter Jr.", "Lucky"]
  data[attribute].each do |trait, names|

  names.each do |name|
    working_hash[name][attribute] << trait.to_s
    end
  end
end



end

#steps
  #new data structure to fill in
    #each name is a key of the hash
    #each value is a hash


    #{"theo"=> {}, "Peter Jr."=>{}}
    #give me a list of unique names
    #assign these names as a key to a hash
    #assign each values as being a hash
    #place in the relevant attributes

