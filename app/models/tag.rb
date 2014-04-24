# == Schema Information
#
# Table name: tags
#
#  id          :integer          not null, primary key
#  description :string(255)
#  content     :string(255)
#  template_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Tag < ActiveRecord::Base
  validates :description, presence: true
  validates :template_id, presence: true

  belongs_to :template
end
