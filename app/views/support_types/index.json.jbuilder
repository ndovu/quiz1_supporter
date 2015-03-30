json.array!(@support_types) do |support_type|
  json.extract! support_type, :id, :support_type_name
  json.url support_type_url(support_type, format: :json)
end
