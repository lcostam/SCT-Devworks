json.extract! usuario, :id, :name, :email, :password_digest, :status, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
