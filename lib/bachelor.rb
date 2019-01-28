def get_first_name_of_season_winner(data, season)
  data[season].each do |inner_data|
    if inner_data["status"] == "Winner"
      return inner_data["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, people|
    people.each do |inner_data|
      if inner_data["occupation"] == occupation
        return inner_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  tally = 0
  data.each do |season, people|
    people.each do |inner_data|
      if inner_data["hometown"] == hometown
        tally += 1
      end
    end
  end
  tally
end

def get_occupation(data, hometown)
  data.each do |season, people|
    people.each do |inner_data|
      if inner_data["hometown"] == hometown
        return inner_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
end
