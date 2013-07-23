class CreateArticlesFinally < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :url
      t.references :category
      t.string :slug
      # == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  url         :string(255)
#  category_id :integer
#  slug        :string(255)
#
    end
  end
end
