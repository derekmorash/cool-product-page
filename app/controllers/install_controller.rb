class HomeController < ShopifyApp::AuthenticatedController

  # display all themes and a form for installing the section
  def index
    @themes = ShopifyAPI::Theme.all
  end

  # Gets a theme id and pushes a new asset to the theme based on the id
  def create
    # theme = install_params

    # flash[:success] = "Theme selected #{theme.theme_id}"
    # redirect_to install_path
  end

  # private
  #   def install_params
  #     params.require(:theme).permit(:theme_id)
  #   end

end
