class ScoreContextSerializer < ActiveModel::Serializer
  attributes :id, :description, :perSecondVariable, :outputStart, :outputEnd, :unit, :image
end
