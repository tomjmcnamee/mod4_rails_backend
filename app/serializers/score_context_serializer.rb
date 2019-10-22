class ScoreContextSerializer < ActiveModel::Serializer
  attributes :description, :perSecondVariable, :outputStart, :outputEnd, :unit
end
