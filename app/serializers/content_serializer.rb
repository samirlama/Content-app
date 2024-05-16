class ContentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body, :user_id, :created_at, :updated_at
end
