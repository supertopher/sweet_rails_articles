class MakeTagTable < ActiveRecord::Migration
  def change
    create_table :tags do |mario|
      mario.string    :description
      mario.string :slug
    end

    create_table :taggings do |mario|
      mario.references :article
      mario.references :tag
    end
  end
end
