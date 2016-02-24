class AddCompleteToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :complete, :boolean, default: false
  end
end
