json.extract! invoice, :id, :title, :company_name, :zip, :pref, :address, :tel, :subtotal, :tax_rate, :tax, :amount, :sub1, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
