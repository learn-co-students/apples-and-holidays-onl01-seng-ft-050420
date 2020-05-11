require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
    {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }}
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }}
    
    holiday_hash.each do |seasons, items_holiday_hash|
      if seasons == :winter
        items_holiday_hash.each do |special_day, special_item|
          special_item << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)

    {
        :winter => {
          :christmas => ["Lights", "Wreath"],
          :new_years => ["Party Hats"]
        },
        :summer => {
          :fourth_of_july => ["Fireworks", "BBQ"]
        },
        :fall => {
          :thanksgiving => ["Turkey"]
        },
        :spring => {
          :memorial_day => ["BBQ"]
        }}
        
        
        holiday_hash.each do |seasons, items_holiday_hash|
      if seasons == :spring
        items_holiday_hash.each do |special_day, special_item|
          special_item << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  {
        :winter => {
          :christmas => ["Lights", "Wreath"],
          :new_years => ["Party Hats"]
        },
        :summer => {
          :fourth_of_july => ["Fireworks", "BBQ"]
        },
        :fall => {
          :thanksgiving => ["Turkey"]
        },
        :spring => {
          :memorial_day => ["BBQ"]
        }}
        
        holiday_hash[season][holiday_name]= supply_array
        holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
   {
        :winter => {
          :christmas => ["Lights", "Wreath"],
          :new_years => ["Party Hats"]
        },
        :summer => {
          :fourth_of_july => ["Fireworks", "BBQ"]
        },
        :fall => {
          :thanksgiving => ["Turkey"]
        },
        :spring => {
          :memorial_day => ["BBQ"]
        }}
      array1 = holiday_hash[:winter][:christmas]
      array2 = holiday_hash[:winter][:new_years]
      string1 = array2.join
      array1 << string1

end

def all_supplies_in_holidays(holiday_hash)
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
      {
        :winter => {
          :christmas => ["Lights", "Wreath"],
          :new_years => ["Party Hats"]
        },
        :summer => {
          :fourth_of_july => ["Fireworks", "BBQ"]
        },
        :fall => {
          :thanksgiving => ["Turkey"]
        },
        :spring => {
          :memorial_day => ["BBQ"]
        }}
    
        holiday_hash.each do |seasons, items_holiday_hash|
          puts "#{seasons.capitalize}:"
          items_holiday_hash.each do |special_day, special_item|
            puts"  #{special_day.to_s.split('_').map {|word| word.capitalize }.join(' ') }: #{special_item.join(", ")}"
          end
        end
    end
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
 {
        :winter => {
          :christmas => ["Lights", "Wreath"],
          :new_years => ["Party Hats"]
        },
        :summer => {
          :fourth_of_july => ["Fireworks", "BBQ"]
        },
        :fall => {
          :thanksgiving => ["Turkey"]
        },
        :spring => {
          :memorial_day => ["BBQ"]
        }}
        
       holiday_hash.map do |seasons, items_holiday_hash|
          items_holiday_hash.map do |special_day, special_item|
            special_day if special_item.include?("BBQ")
          end
        end.flatten.compact
      end








