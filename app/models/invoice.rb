class Invoice < ApplicationRecord
    has_many :invoice_details
    has_many :groups
end
