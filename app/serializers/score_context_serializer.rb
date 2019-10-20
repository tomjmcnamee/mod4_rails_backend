class ScoreContextSerializer < ActiveModel::Serializer
  attributes :description, :perSecondVariable, :unit, :outputStart, :outputEnd
end
