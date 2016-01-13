class AddFlavorIdToTargets < ActiveRecord::Migration
  def change
    add_reference :targets, :flavor, index: true, foreign_key: true
  end
end
