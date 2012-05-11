class CreateBulletTypes < ActiveRecord::Migration
  def change
    create_table :bullet_types do |t|
      t.string :name, :null => false
      t.string :acronym, :null => false

      t.timestamps
    end
  end
end
