class User < ActiveRecord::Base
  acts_as_authentic
  has_many :watcheds
  has_many :users, :through => :watcheds
end
