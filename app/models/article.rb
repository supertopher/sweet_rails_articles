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

class Article < ActiveRecord::Base
  belongs_to :category
  has_many :taggings
  has_many :tags, through: :taggings


  def to_param
    slug
  end
  
  

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

  def self.add_slug
    Article.all.each do |article|
      article.update_attribute(:slug, article.to_slug)
    end
  end

  def to_slug
    self.title.downcase.gsub(/[^a-z1-9]+/, '-').chomp('-')
  end


end
