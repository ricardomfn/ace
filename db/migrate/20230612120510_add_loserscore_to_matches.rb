class AddLoserscoreToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :loser_score, :integer
  end
end
