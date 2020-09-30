class HeroSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :width, :height, :steps, :url
 

  def url
    avatar = object.sprite
    # byebug
    return rails_blob_url(avatar)
  end
end

