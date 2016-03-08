class ApiKeysController < ApplicationController

  before_filter :authorize

  def create
    if request.post?
      @api_key = ApiKey.new params_api_key
      @api_key.key = SecureRandom.base64
      @api_key.user_id = current_user.id

      if @api_key.save
        redirect_to api_keys_index_path
      else
        flash.now[:notice] = 'Fill name of app in field'
        render 'new'
      end

    end
  end


  def destroy
    k = ApiKey.find_by_id(params[:id])
    k.destroy
    redirect_to api_keys_index_url
  end

  def index

    #Only access to own keys
    @api_keys =  @current_user.api_keys.all

    #Administrator has Acces to all available keys in db
    if @current_user.admin
      @api_keys = ApiKey.all
    end

  end

  def new
    @api_key = ApiKey.new
  end

  private
  def params_api_key
    params.require(:api_key).permit(:app)
  end

end
