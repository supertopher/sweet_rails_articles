class MakeCategoriesTable < ActiveRecord::Migration
  def change
    create_table :categories do |mario|
      mario.string :description
    end
  end
end
