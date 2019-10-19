class ChangePerSecondVariableToBeFloatInScoreContexts < ActiveRecord::Migration[6.0]
  def change
    change_column :score_contexts, :perSecondVariable, :float
  end
end
