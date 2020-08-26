class PurchaseRequest < ApplicationRecord
  belongs_to :watch
  belongs_to :user
end
