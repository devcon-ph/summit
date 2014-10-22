class Sponsor < ActiveRecord::Base
  belongs_to :category, class_name: 'SponsorCategory', foreign_key: 'sponsor_category_id'
end
