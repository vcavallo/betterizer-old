class CreateListedTargets < ActiveRecord::Migration
  def change
    create_table :listed_targets do |t|
      t.references :list, index: true, foreign_key: true
      t.references :target, index: true, foreign_key: true
      t.integer :order
    end
  end
end
