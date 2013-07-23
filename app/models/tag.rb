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


end
