class NewsSerializer < ActiveModel::Serializer
  attributes :title, :photo_url, :html_content

  has_one :category
end
