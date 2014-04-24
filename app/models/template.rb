# == Schema Information
#
# Table name: templates
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Template < ActiveRecord::Base
  validates :content, presence: true
  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }

  has_many :tags

  accepts_nested_attributes_for :tags
end
