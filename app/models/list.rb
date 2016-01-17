class List < ActiveRecord::Base
  belongs_to :flavor
  has_many :targets
end
