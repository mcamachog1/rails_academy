class PaymentByStudent < ApplicationRecord
  belongs_to :student
  belongs_to :payment
end
