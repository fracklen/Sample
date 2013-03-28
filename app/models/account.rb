class Account < ActiveRecord::Base
  attr_accessible :username, :invalidated_at, :password, :username, :password_confirmation
  has_secure_password

  
  validates_presence_of :username
  validates_uniqueness_of :username
  
  def self.authenticate(username, password)
    find_by_username(username).try(:authenticate, password)
  end
end
