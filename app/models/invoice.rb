class Invoice < ApplicationRecord
    has_many :invoice_details
end
