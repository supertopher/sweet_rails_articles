# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
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

end
