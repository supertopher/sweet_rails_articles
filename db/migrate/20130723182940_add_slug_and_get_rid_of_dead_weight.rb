class AddSlugAndGetRidOfDeadWeight < ActiveRecord::Migration
  def change
    add_column :articles, :slug, :string
    remove_column :articles, :tags
    remove_column :articles, :category
  end
end
