class EmergencyContact < ApplicationRecord
	audited
  belongs_to :camp_member
end
