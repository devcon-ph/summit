class SpeakerSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :position, :company
end
