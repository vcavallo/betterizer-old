class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
