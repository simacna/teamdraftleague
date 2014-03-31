class FixSpellingForChallengerChallongeNumberInMatches < ActiveRecord::Migration
  def change
  	change_table :matches do |t|
  		t.rename :challnger_challonge_number, :challenger_challonge_number
  	end
  end
end
