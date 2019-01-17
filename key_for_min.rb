# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(name_hash)
  @name_hash = name_hash
  sorted_values = find_the_smallest
  smallest_value = sorted_values[0]
  my_array = []
  name_hash.collect do |key, value|
    if value == smallest_value
        my_array.push(key)
    end
  end
  my_array[0]
end

def get_the_values
    @name_hash.collect do |key, value|
        value
    end
end

def find_the_smallest
    values_array = get_the_values
    values_array.sort do |a, b|
        if a > b
            1
        else
            0
        end
    end
end

