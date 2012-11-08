class Notification < ActiveRecord::Base
  attr_accessible :id, :option
  belongs_to :user
  has_many :labels
end
