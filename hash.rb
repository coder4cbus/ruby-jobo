require './hash'



@hash = {"one" => 1, "two" => 2, "three" => 3}

class Hash
def yo
puts "Yo, Yo- "
end

alias_method :old_has_key?, :has_key?
# open classes involves redefining something with new behavior, but same method name

def has_key?(value)
puts "Looking for value associated with #{{value}} but not finding it"
old_has_key?(value)
end
end

# ruby library helps you translate between keys and symbols
# write a code in modules because allows you to combine different portions of code.
