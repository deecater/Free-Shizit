class Review < ActiveRecord::Base
  attr_accessible :comment, :id, :rating
  belongs_to :user, :shizit
end
