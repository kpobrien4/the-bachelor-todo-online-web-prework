require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |people|
    binding.pry
         people.each do |attribute,value|
          if value == "Winner"
              full_name = people["name"]
              return full_name.split(' ').first
          end
        end
      end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, season_array|
  season_array.each do |into_array|
    if into_array[:occupation] == occupation
      return into_array[:name]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season,season_array|
    season_array.each do |into_array|
      if into_array[:hometown] == hometown
        counter+=1
      end
  end
 end
 return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season,season_array|
    season_array.each do |into_array|
      if into_array[:hometown] == hometown
      return into_array[:name]
    end
  end
end
end

def get_average_age_for_season(data, season)
  # code here
end
