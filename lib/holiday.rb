require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 
holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<< supply 
holiday_hash[:winter][:new_years]<< supply


end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

 holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
new_arr = []
holiday_hash.each do |key, value|
if key == :winter
value.collect do |i|
new_arr << i
end
end
  # return an array of all of the supplies that are used in the winter season
end
new_arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
#--------I was close on this one but I had to look it up.I need more practice with map------

# holiday_hash.each do |season, holiday|
# puts "#{season.capitalize}:"

# holiday.each do |day, celebrate|
# test = day.to_s.split("_").join(" ")

# puts"  #{test.gsub(/_/," ")}: #{celebrate.join(', ')}"

#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.

  answer = ""
  holiday_hash.each do |season,value|
    puts ("#{season}".capitalize. + ":")
    value.each do |holi,supp|
      line = "  " + "#{holi}".gsub(/_/," ").split.map(&:capitalize).join(' ') + ": #{supp.join(", ")}"
      puts line
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
fin_arr = []
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_hash.each do |keys, values|
values.collect do |holiday, list|
if list.include?("BBQ")
fin_arr << holiday
end
end
end
fin_arr
end






