require 'pry'
#holiday_supplies = {
#  :winter => {
#    :christmas => ["Lights", "Wreath"],
#    :new_years => ["Party Hats"]
#  },
#  :summer => {
#    :fourth_of_july => ["Fireworks", "BBQ"]
#  },
#  :fall => {
#    :thanksgiving => ["Turkey"]
#  },
#  :spring => {
#    :memorial_day => ["BBQ"]
#  }
#}

def second_supply_for_fourth_of_july(holiday_supplies)
  # given that holiday_hash looks like this:
   holiday_supplies[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, data|
    #binding.pry
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, supply|
      arrays = holiday.to_s.split("_")
  hol=arrays.map do |word|
        word.capitalize
      end

      puts "  " + hol.join(" ") + ": " + supply.join(", ")

#binding.pry
    end
      #binding.pry
    end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end
