json.extract! micropost, :id, :section, :content, :user_id, :created_at, :updated_at
json.url micropost_url(micropost, format: :json)
