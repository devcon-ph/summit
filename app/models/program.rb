class Program < ActiveRecord::Base
  has_and_belongs_to_many :speakers
  belongs_to :category
end
