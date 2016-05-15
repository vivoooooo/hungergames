# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password        :string
#  picture         :string
#  number_of_kills :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_alive        :boolean
#

class User < ActiveRecord::Base
  has_many :killer_relationships, foreign_key: "victim_id", class_name: "Friendship", dependent: :destroy
  has_many :victim_relationships, foreign_key: "killer_id", class_name: "Friendship", dependent: :destroy
  has_one :weapon, through: :friendship

  scope :alive, -> { where(is_alive: true) }
  scope :dead, -> { where(is_alive: false) }
end
