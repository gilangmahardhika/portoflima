class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.integer :user_id
      t.integer :skill_type_id
      t.string :image
      t.text :description
      t.string :url
      t.integer :like
      t.integer :point

      t.timestamps
    end
  end
end
