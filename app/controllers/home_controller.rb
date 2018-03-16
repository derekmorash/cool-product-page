class HomeController < ShopifyApp::AuthenticatedController
  def index
    # @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @themes = ShopifyAPI::Theme.all
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
