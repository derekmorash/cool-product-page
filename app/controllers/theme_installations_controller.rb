class ThemeInstallationsController < ShopifyApp::AuthenticatedController
  before_action :set_theme_installation, only: [:show, :edit, :update, :destroy]

  # GET /theme_installations
  # GET /theme_installations.json
  def index
    @shop_themes = ShopifyAPI::Theme.all
    @theme_installations = ThemeInstallation.all
  end

  # GET /theme_installations/1
  # GET /theme_installations/1.json
  def show
  end

  # GET /theme_installations/new
  def new
    @shop_themes = ShopifyAPI::Theme.all
    @theme_installation = ThemeInstallation.new
  end

  # GET /theme_installations/1/edit
  def edit
  end

  # POST /theme_installations
  # POST /theme_installations.json
  def create
    @theme_installation = ThemeInstallation.new(theme_installation_params)
    @theme_installation.shop = Shop.first

    respond_to do |format|
      if @theme_installation.save
        format.html { redirect_to theme_installations_url, notice: 'Theme installation was successfully created.' }
        format.json { render :show, status: :created, location: @theme_installation }
      else
        format.html { render :new }
        format.json { render json: @theme_installation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theme_installations/1
  # PATCH/PUT /theme_installations/1.json
  def update
    respond_to do |format|
      if @theme_installation.update(theme_installation_params)
        format.html { redirect_to theme_installations_url, notice: 'Theme installation was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme_installation }
      else
        format.html { render :edit }
        format.json { render json: @theme_installation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theme_installations/1
  # DELETE /theme_installations/1.json
  def destroy
    @theme_installation.destroy
    respond_to do |format|
      format.html { redirect_to theme_installations_url, notice: 'Theme installation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_installation
      @theme_installation = ThemeInstallation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme_installation_params
      params.require(:theme_installation).permit(:theme_id)
    end
end
