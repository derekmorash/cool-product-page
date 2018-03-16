class HomeController < ShopifyApp::AuthenticatedController
  def index
    # @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @collections = ShopifyAPI::CustomCollection.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
