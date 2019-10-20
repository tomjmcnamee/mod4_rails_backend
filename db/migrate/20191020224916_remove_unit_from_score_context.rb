class RemoveUnitFromScoreContext < ActiveRecord::Migration[6.0]
  def change

    remove_column :score_contexts, :unit, :string
  end
end
