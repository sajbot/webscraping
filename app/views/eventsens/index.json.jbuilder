json.array!(@eventsens) do |eventsen|
  json.extract! eventsen, :event, :city, :number
  json.url eventsen_url(eventsen, format: :json)
end
