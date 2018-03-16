class HomeController < ShopifyApp::AuthenticatedController
  def index
    @themes = ShopifyAPI::Theme.all
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
