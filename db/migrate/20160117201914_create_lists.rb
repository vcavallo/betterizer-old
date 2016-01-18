class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :flavor, index: true, foreign_key: true
      t.string :name
    end
  end
end
