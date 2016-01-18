class Flavor < ActiveRecord::Base
  has_many :targets
  has_many :lists
end
