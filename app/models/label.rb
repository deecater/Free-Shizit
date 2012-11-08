class Label < ActiveRecord::Base
  attr_accessible :id, :name
  has_and_belongs_to_many :notification
end
