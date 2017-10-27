class CreateDanids < ActiveRecord::Migration
  def change
    create_table :danids do |t|
    	t.string :title
    end
  end
end
