# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  description :string(255)
#

class Category < ActiveRecord::Base

  has_many :articles
  
  def to_param
    slug
  end

end
