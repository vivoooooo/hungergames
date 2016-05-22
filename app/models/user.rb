# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  email           :string           not null
#  password        :string           not null
#  picture         :string
#  number_of_kills :integer          default("0")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_alive        :boolean          default("true")
#  password_digest :text
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :killer_relationships, foreign_key: "victim_id", class_name: "Friendship", dependent: :destroy
  has_many :victim_relationships, foreign_key: "killer_id", class_name: "Friendship", dependent: :destroy
  has_one :weapon, through: :friendship

  scope :alive, -> { where(is_alive: true) }
  scope :dead, -> { where(is_alive: false) }

  validates :email, :presence => true, :uniqueness => true    # you must have an email, and the presence must be true
  validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 3 }   #it must be 'unique'

end
