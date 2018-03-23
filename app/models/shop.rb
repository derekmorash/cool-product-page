class Shop < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  has_many :theme_installations, dependent: :destroy
end
