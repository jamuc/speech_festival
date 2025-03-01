json.extract! registration, :id, :name, :email, :drink_package, :lunch, :social_event, :created_at, :updated_at
json.url registration_url(registration, format: :json)
