class AddImageToScoreContexts < ActiveRecord::Migration[6.0]
  def change
    add_column :score_contexts, :image, :string
  end
end
