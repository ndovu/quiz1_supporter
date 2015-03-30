json.array!(@user_support_forms) do |user_support_form|
  json.extract! user_support_form, :id, :name, :email, :support_type_id, :message
  json.url user_support_form_url(user_support_form, format: :json)
end
