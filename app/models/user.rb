class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :email, :password, :password_confirmation
  has_many :watcheds
  has_many :users, :through => :watcheds
end
