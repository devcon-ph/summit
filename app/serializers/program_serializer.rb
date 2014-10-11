class ProgramSerializer < ActiveModel::Serializer
  attributes :start_at, :title, :description

  has_one :category

  has_many :speakers
end
