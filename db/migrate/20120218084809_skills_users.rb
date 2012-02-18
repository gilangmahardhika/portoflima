class SkillsUsers < ActiveRecord::Migration
  def change
    create_table :skills_users, :id => false  do |t|
      t.references :user, :null => false
      t.references :skill, :null => false
    end
  end
end
