class SubscribeUsersController < ApplicationController
  before_action :set_subscribe_user, only: [:show, :edit, :update, :destroy]

  # GET /subscribe_users
  # GET /subscribe_users.json
  def index
    @subscribe_users = SubscribeUser.all
  end

  # GET /subscribe_users/1
  # GET /subscribe_users/1.json
  def show
  end

  # GET /subscribe_users/new
  def new
    @subscribe_user = SubscribeUser.new
  end

  # GET /subscribe_users/1/edit
  def edit
  end

  # POST /subscribe_users
  # POST /subscribe_users.json
  def create
    @subscribe_user = SubscribeUser.new(subscribe_user_params)

    respond_to do |format|
      if @subscribe_user.save
        format.html { redirect_to @subscribe_user, notice: 'Subscribe user was successfully created.' }
        format.json { render :show, status: :created, location: @subscribe_user }
      else
        format.html { render :new }
        format.json { render json: @subscribe_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscribe_users/1
  # PATCH/PUT /subscribe_users/1.json
  def update
    respond_to do |format|
      if @subscribe_user.update(subscribe_user_params)
        format.html { redirect_to @subscribe_user, notice: 'Subscribe user was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscribe_user }
      else
        format.html { render :edit }
        format.json { render json: @subscribe_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribe_users/1
  # DELETE /subscribe_users/1.json
  def destroy
    @subscribe_user.destroy
    respond_to do |format|
      format.html { redirect_to subscribe_users_url, notice: 'Subscribe user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscribe_user
      @subscribe_user = SubscribeUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscribe_user_params
      params.require(:subscribe_user).permit(:name, :prefix, :email)
    end
end
