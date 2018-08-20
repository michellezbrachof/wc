json.extract! contacto, :id, :name, :email, :phone, :service_type, :stage, :budget, :timeframe, :start, :created_at, :updated_at
json.url contacto_url(contacto, format: :json)
