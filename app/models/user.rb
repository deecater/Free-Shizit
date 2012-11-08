class User < ActiveRecord::Base
  attr_accessible :email, :id, :name, :password, :zipcode
  has_many :shizits, :reviews
  has_one :notification
end
