class CreatePrimers < ActiveRecord::Migration
  def change
    create_table :primers do |t|
      t.string :name, :null => false
      t.references :manufacturer, :null => false
      t.references :primer_size, :null => false

      t.timestamps
    end

    add_index :primers, :manufacturer_id
    add_index :primers, :primer_size_id
  end
end
