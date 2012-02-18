class CreateWorkGalleries < ActiveRecord::Migration
  def change
    create_table :work_galleries do |t|
      t.integer :work_id
      t.string :image

      t.timestamps
    end
  end
end
