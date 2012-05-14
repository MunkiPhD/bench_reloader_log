class CreateBullets < ActiveRecord::Migration
  def change
    create_table :bullets do |t|
      t.references :manufacturer, :null => false
      t.references :caliber, :null => false
      t.references :bullet_type, :null => false
      t.integer :weight, :null => false
      t.decimal :diameter, :null => false, :precision => 4, :scale => 3
      t.string :name

      t.timestamps
    end
    add_index :bullets, :manufacturer_id
    add_index :bullets, :caliber_id
    add_index :bullets, :bullet_type_id
  end
end
