details = {"name" => 'Paco', "Color" => "Black"}

detailsSimbols = {name: 12, color: "White"}

p details["name"]

p details["Color"]

p detailsSimbols[:name]

p details.keys

p detailsSimbols.values

details.each do |key, value|
    puts "#{key}: #{value}"
end

details.each {|key, value| puts "#{key}: #{value}"}

# Symbols
detailsSimbols[:lastName] = "Luna"

detailsSimbols[:name] = "Pako"

p detailsSimbols

computer = {type: "Mac", version: 3}

no_version = computer.select {|k, v| v.is_a?(String)} # Select only when value is a string
computer.each {|k, v| computer.delete(k) if v.is_a?(String)} # Delete if value is a string 

p no_version
p computer