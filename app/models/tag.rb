# == Schema Information
#
# Table name: tags
#
#  id          :integer          not null, primary key
#  description :string(255)
#

class Tag < ActiveRecord::Base
  has_many :articles, through: :taggings
  has_many :taggings

  def self.populate
    Article.all.each do |article|
      tags = article.tags.split(", ")
      tags.each do |tag|
        Tag.find_or_create_by_description(tag)
      end
    end
  end
end
