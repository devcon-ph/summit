class UserSerializer < ActiveModel::Serializer
  attributes :email, :first_name, :last_name, :position, :company, :location,
             :description, :website, :facebook_url, :twitter_handle, :photo_url

  has_one :primary_technology
  has_many :technologies
end
