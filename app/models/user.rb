class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.validate_email_field = false
  end


  attr_accessible :login, :email, :password, :password_confirmation
  has_many :watcheds
  has_many :videos, :through => :watcheds

  has_many :course_permissions
  has_many :courses, :through => :course_permissions
  
  validates :email, :uniqueness => true, :allow_nil => true

  def self.find_by_anything(login)
    find_by_login(login) || find_by_email(login) || find_by_id(login)
  end
end
