# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  request_id :integer
#
class User < ApplicationRecord
  validates :name, :presence => true
  validates :password, :presence => true
end
