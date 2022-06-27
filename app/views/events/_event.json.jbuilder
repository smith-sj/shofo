json.extract! event, :id, :title, :description, :start_date, :end_date, :address, :venue, :private, :capacity, :price, :user, :status, :category, :sub_category, :created_at, :updated_at
json.url event_url(event, format: :json)
json.description event.description.to_s
