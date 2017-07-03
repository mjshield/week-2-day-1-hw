class Team

  # attr_reader :name
  attr_accessor :coach, :players, :points, :name

  def initialize(name, coach)
    @team_name = name
    @players = []
    @coach = coach
    @points = 0
  end

  # def get_team_name
  #   return @team_name
  # end

  # def get_players
  #   return @players
  # end

  # def get_coach
  #   return @coach
  # end

  # def new_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def check_player(player)
    @players.include?(player)
  end

  def win_lose(result)
    if result == win
      @points += 1
    end
  end




end