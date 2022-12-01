inventories = File.readlines(File.expand_path('input.csv', __dir__)).map do |entry|
  parsed = entry.chomp
  parsed.empty? ? nil : parsed.to_i
end

elfs = []
inventories.inject do |sum, calories|
  calories.nil? ? elfs << sum && 0 : sum + calories
end

puts "Max calories: #{elfs.max}"
puts "Max calories by 3 elfs: #{elfs.sort.last(3).sum}"
