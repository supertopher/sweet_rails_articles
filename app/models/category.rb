# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  description :string(255)
#

class Category < ActiveRecord::Base

  has_many :articles

  def self.populate
    Article.all.each do |article|
      Category.find_or_create_by_description(article.category)
    end
  end

end
