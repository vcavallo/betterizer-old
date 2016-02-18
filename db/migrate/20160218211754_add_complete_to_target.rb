class AddCompleteToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :complete, :boolean
  end
end
