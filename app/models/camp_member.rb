class CampMember < ApplicationRecord
	audited
  belongs_to :church
end
