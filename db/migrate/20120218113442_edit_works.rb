class EditWorks < ActiveRecord::Migration
  def change
  	change_table :works do |t|
  		t.remove	:skill_type_id
  		t.integer	:skill_category_id
  	end
  end
end
