class AddArchivedToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :archived, :boolean, default: false
  end
end
