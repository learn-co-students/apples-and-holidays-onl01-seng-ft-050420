
require 'pry'

def second_supply_for_fourth_of_july(hash)
  that_sauce = ""

    hash.each do |keys, values|
 # keys = wintersummerfallspring
      values.each do |more_keys, more_values|
         more_values.flatten.select do |found_it|

          if found_it == "BBQ"

            that_sauce = found_it
            that_sauce
          end
        end
      end
  end
  hash[:summer][:fourth_of_july][1]
  end

  def add_supply_to_winter_holidays(holiday_hash, item)
holiday_hash[:winter].each do |holiday, decorations|
 decorations << item
end
end

def add_supply_to_memorial_day(holiday_hash, item)
  holiday_hash[:spring][:memorial_day] << item
end



 def all_winter_holiday_supplies(hash)
hash[:winter].values.flatten
 end



def add_new_holiday_with_supplies(holiday_supplies, season, holiday, supplies)
  holiday_supplies[season][holiday] = supplies
end

def all_holidays_with_bbq(holiday_supplies)
  bbq_holidays = []
  holiday_supplies.each do |season, holiday|
    holiday.each do |holiday_name, supplies|
     if supplies.include? ("BBQ")
       bbq_holidays << holiday_name
     end
   end
 end
bbq_holidays
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")          }: #{  supplies.join(", ")  }"
      # puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{item.join(", ")}"
    end
  end
end
