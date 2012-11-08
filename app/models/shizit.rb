class Shizit < ActiveRecord::Base
  attr_accessible :city, :description, :end_date, :id, :name, :promotion, :start_date, :state, :street_line1, :street_line2, :zipcode
  belongs_to :user
  has_and_belongs_to_many :labels
  has_many :reviews
end
