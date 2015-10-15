json.array!(@messages) do |message|
  json.extract! message, :id, :text
  json.url message_url(message, format: :json)
end
