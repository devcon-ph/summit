class SpeakerSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :position, :company, :description, :twitter_handle,
             :website, :photo_url

  has_many :programs
  has_many :categories
end
