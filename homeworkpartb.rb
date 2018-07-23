class Team

attr_reader :name, :players, :coach

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points

  end

  # def name()
  #   return @name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end

  def set_coach(new_name)
    @coach = new_name
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_name(name)
    return @players.include?(name)
  end

  def add_wins(win)
    if win == "win"
      @points += 1
    else @points += 0
    end
  end

end
