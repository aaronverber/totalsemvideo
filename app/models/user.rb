class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :login, :email, :password, :password_confirmation
  has_many :watcheds
  has_many :videos, :through => :watcheds

  def self.find_by_anything(login)
    find_by_login(login) || find_by_email(login) || find_by_id(login)
  end

end
