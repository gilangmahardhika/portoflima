class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :user_type_id
      t.text :about
      t.string :image
      t.string :uid

      t.timestamps
    end
  end
end
