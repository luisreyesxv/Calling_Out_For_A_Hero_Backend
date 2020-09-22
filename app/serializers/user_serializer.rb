class UserSerializer < ActiveModel::Serializer
attributes :id, :name, :email, :current_device, :current_playlist_id


end