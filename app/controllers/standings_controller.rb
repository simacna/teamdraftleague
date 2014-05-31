class StandingsController < ApplicationController

  def index 
    # only presents the standings for active seasons
    @season = Season.where(active: true)

    # create a hash that will hold all active season standings
    @standings = []

    # iterate over each season and its teams to sort teams by number of match wins
    @season.each do |season|

      season_standings = []

      season.teams.uniq.each do |team|
        # find the team's matches
        matches = Match.where("team_id = ? and season_id = ? or challenger_id = ? and season_id = ?", team.id, season.id, team.id, season.id)

        # set initial records
        match_wins = 0
        match_losses = 0 

        # iterate over each match and increment match_wins or match_losses as appropriate
        matches.uniq.each do |match|
          if match.winner != nil
            case match.winner
            when team.id
              match_wins += 1
            else
              match_losses += 1
            end
          end
        end

        # add team to season_standings
        season_standings << {name: team.name, wins: match_wins, losses: match_losses}
      end

      # add season to standings hash
      sorted_standings = season_standings.sort { |a,b| a[:wins] <=> b[:wins] }
      @standings << { :name => season.name, :standings => sorted_standings.reverse }
    end
  end
end