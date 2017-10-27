class AddDescriptionToDanids < ActiveRecord::Migration
  def change
  	add_column :danids, :description, :text
  	add_column :danids, :created_at,  :datetime
  	add_column :danids, :updated_at,  :datetime
  end
end
