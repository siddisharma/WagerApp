json.extract! payout, :id, :bet_id, :amount, :rank, :created_at, :updated_at
json.url payout_url(payout, format: :json)
