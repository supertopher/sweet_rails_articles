# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  url         :string(255)
#  category    :string(255)
#  tags        :string(255)
#  category_id :integer
#

class Article < ActiveRecord::Base
  belongs_to :category
  
  

  def self.assign_category_id
    Article.all.each do |this_article|
      cat = Category.find_by_description(this_article.category)
      puts cat.id
      this_article.update_attribute(:category_id, cat.id)

    end
  end

  def self.create_taggings
    Article.all.each do |this_article|
      this_article.tags.split(", ").each do |tag|
        found_tag = Tag.find_by_description(tag)
        Tagging.create(article_id: this_article.id, tag_id: found_tag.id)
      end
    end
  end

end
