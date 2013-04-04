class Person < ActiveRecord::Base
  attr_accessible :birthday, :name
  has_many :wishes, :order => "priority ASC"
end
