json.extract! payment, :id, :date, :amount_usd, :amount_bs, :parent_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
