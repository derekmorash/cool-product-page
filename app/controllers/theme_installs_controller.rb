class ThemeInstallsController < ShopifyApp::AuthenticatedController
  before_action :set_theme_install, only: [:show, :edit, :update, :destroy]

  # GET /theme_installs
  # GET /theme_installs.json
  def index
    @shop_themes = ShopifyAPI::Theme.all
    @theme_installs = ThemeInstall.all
  end

  # GET /theme_installs/1
  # GET /theme_installs/1.json
  def show
  end

  # GET /theme_installs/new
  def new
    @shop_themes = ShopifyAPI::Theme.all
    @theme_install = ThemeInstall.new
  end

  # GET /theme_installs/1/edit
  def edit
  end

  # POST /theme_installs
  # POST /theme_installs.json
  def create
    @theme_install = ThemeInstall.new(theme_install_params)
    @theme_install.shop = Shop.first

    respond_to do |format|
      if @theme_install.save
        format.html { redirect_to theme_installs_url, notice: 'Theme install was successfully created.' }
        format.json { render :show, status: :created, location: @theme_install }
      else
        format.html { render :new }
        format.json { render json: @theme_install.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theme_installs/1
  # PATCH/PUT /theme_installs/1.json
  def update
    respond_to do |format|
      if @theme_install.update(theme_install_params)
        format.html { redirect_to @theme_install, notice: 'Theme install was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme_install }
      else
        format.html { render :edit }
        format.json { render json: @theme_install.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theme_installs/1
  # DELETE /theme_installs/1.json
  def destroy
    @theme_install.destroy
    respond_to do |format|
      format.html { redirect_to theme_installs_url, notice: 'Theme install was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_install
      @theme_install = ThemeInstall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme_install_params
      params.require(:theme_install).permit(:shop_id, :shop_domain, :theme_id)
    end
end
