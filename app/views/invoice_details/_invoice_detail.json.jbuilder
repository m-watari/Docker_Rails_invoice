json.extract! invoice_detail, :id, :title, :quantity, :unit, :unit_price, :sort, :invoice_id, :created_at, :updated_at
json.url invoice_detail_url(invoice_detail, format: :json)
