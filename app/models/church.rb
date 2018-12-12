class Church < ApplicationRecord
	audited
	belongs_to :camp_member, :optional => true
	#required: false
end
