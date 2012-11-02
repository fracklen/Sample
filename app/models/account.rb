class Account < ActiveRecord::Base
  attr_accessible :invalidated_at, :password, :username
end
