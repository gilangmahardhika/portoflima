class EditAttachment < ActiveRecord::Migration
  def change
  	change_table :work_galleries do |f|
  		f.remove :work_id
  		f.references :attachable, :polymorphic => true
  	end
  end
end
