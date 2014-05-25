json.array!(@profiles) do |profile|
  json.extract! profile, :id, :display_name, :bio, :image, :website, :dob, :location, :user_id
  json.url profile_url(profile, format: :json)
end
