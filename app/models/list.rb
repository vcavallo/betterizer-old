class List < ActiveRecord::Base
  belongs_to :flavor
  validates_presence_of :flavor_id
end
