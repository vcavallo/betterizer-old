class Target < ActiveRecord::Base
  belongs_to :flavor
  belongs_to :list

  acts_as_list scope: :list
end
