class SponsorSerializer < ActiveModel::Serializer
  attributes :name, :photo_url, :website

  has_one :category
end
