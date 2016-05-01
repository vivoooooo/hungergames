# == Schema Information
#
# Table name: friendships
#
#  id         :integer          not null, primary key
#  killer_id  :integer
#  victim_id  :integer
#  weapon_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Friendship < ActiveRecord::Base
  belongs_to :killer, class_name: "User"
  belongs_to :victim, class_name: "User"
  has_one :weapon
end
