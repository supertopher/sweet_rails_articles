class MakeCategoriesTable < ActiveRecord::Migration
  def change
    create_table :categories do |mario|
      mario.string :description
      mario.string :slug
    end
  end
end
