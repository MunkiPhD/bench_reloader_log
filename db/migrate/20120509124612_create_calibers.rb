class CreateCalibers < ActiveRecord::Migration
  def change
    create_table :calibers do |t|
      t.string :name, :null => false
      t.references :load_type, :null => false

      t.timestamps
    end
  end
end
