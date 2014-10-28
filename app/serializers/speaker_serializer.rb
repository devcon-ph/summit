class SpeakerSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :position, :company, :description, :twitter_handle,
             :website, :photo_url, :talk, :category

  def talk
    object.programs.map(&:title)
  end

  def category
    object.programs.map{|program| program.category.name}
  end
end
