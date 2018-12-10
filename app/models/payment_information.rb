class PaymentInformation < ApplicationRecord
audited
  belongs_to :camp_member
end
