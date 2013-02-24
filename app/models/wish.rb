class Wish < ActiveRecord::Base
  attr_accessible :cancelled_at, :name, :note, :person_id, :priority
  belongs_to :person
end
