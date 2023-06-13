class AddImageToLeagues < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :image, :string
  end
end
