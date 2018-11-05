class CampMember < ApplicationRecord
	has_one :church_names
	
  	has_one :emergency_contacts
	
end
