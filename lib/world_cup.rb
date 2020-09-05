class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active = []
    @teams.each do |team|
      if !team.eliminated?
        team.players.each do |player|
          if player.position == position
            active << player
          end
        end
      end
    end
    active
  end
end
