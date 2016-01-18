class AddPositionToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :position, :integer
  end
end
