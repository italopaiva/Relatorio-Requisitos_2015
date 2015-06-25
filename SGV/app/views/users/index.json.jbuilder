json.array!(@users) do |user|
  json.extract! user, :id, :name_user, :login_user, :password_user, :email_user
  json.url user_url(user, format: :json)
end
