# == Schema Information
#
# Table name: plans
#
#  id           :bigint           not null, primary key
#  date         :date
#  going_to     :string
#  leaving_from :string
#  time         :time
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Plan < ApplicationRecord
  validates :date, :presence => true
  validates :going_to, :presence => true
  validates :leaving_from, :presence => true
  validates :time, :presence => true
end
