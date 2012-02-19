class SkillsWorks < ActiveRecord::Migration
  def change
    create_table :skills_works, :id => false  do |t|
      t.references :work, :null => false
      t.references :skill, :null => false
    end
  end
end
	