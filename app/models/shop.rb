class Shop < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  has_many :theme_installs, dependent: :destroy
end
