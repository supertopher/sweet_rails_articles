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
  
end
