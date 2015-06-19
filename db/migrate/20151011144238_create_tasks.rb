class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.belongs_to :user
    	t.string :name
    	t.string :status

    	t.timestamps
    end
  end
end
