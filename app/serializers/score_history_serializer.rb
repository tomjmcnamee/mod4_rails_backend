class ScoreHistorySerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id, :score
end
