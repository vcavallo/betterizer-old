class AddListIdToTarget < ActiveRecord::Migration
  def change
    add_reference :targets, :list, index: true, foreign_key: true
  end
end
