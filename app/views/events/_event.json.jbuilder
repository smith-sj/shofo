json.extract! event, :id, :title, :description, :start_date, :end_date, :address, :venue, :private, :capacity, :price, :user_id, :status, :category_id, :sub_category, :created_at, :updated_at
json.url event_url(event, format: :json)
json.description event.description.to_s
