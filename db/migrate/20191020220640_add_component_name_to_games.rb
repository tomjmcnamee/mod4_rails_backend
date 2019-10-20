class AddComponentNameToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :componentName, :string
  end
end
