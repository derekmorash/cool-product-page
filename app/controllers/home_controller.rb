class HomeController < ShopifyApp::AuthenticatedController
  def index
    @themes = ShopifyAPI::Theme.first
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
