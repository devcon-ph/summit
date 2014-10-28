class ProgramSerializer < ActiveModel::Serializer
  attributes :start_at, :title, :description

  has_one :category

  has_many :speakers

  def start_at
    object.start_at.strftime("%I:%M %P")
  end
end
