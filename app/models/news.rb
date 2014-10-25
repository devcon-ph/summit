class News < ActiveRecord::Base
  belongs_to :category, class_name: 'NewsCategory', foreign_key: 'news_category_id'
end
