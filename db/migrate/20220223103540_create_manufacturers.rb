class CreateManufacturers < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.text :description
      t.string :mid
      t.string :uid
      t.string :bur

      t.timestamps
    end

    add_index :manufacturers, :mid,                unique: true
    add_index :manufacturers, :uid,                unique: true
    add_index :manufacturers, :bur,                unique: true
  end
end
