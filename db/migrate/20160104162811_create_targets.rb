class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
