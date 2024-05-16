class UserSerializer
  include FastJsonapi::ObjectSerializer
  attribute :token do |object, params|
    params[:token]
  end

  attributes :email, :country, :firstName, :lastName, :created_at, :updated_at
end
