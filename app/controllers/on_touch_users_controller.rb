class OnTouchUsersController < ApplicationController
  before_action :set_on_touch_user, only: [:show, :edit, :update, :destroy]

  # GET /on_touch_users
  # GET /on_touch_users.json
  def index
    @on_touch_users = OnTouchUser.all
  end

  # GET /on_touch_users/1
  # GET /on_touch_users/1.json
  def show
  end

  # GET /on_touch_users/new
  def new
    @on_touch_user = OnTouchUser.new
  end

  # GET /on_touch_users/1/edit
  def edit
  end

  # POST /on_touch_users
  # POST /on_touch_users.json
  def create
    @on_touch_user = OnTouchUser.new(on_touch_user_params)

    respond_to do |format|
      if @on_touch_user.save
        format.html { redirect_to @on_touch_user, notice: 'On touch user was successfully created.' }
        format.json { render :show, status: :created, location: @on_touch_user }
      else
        format.html { render :new }
        format.json { render json: @on_touch_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /on_touch_users/1
  # PATCH/PUT /on_touch_users/1.json
  def update
    respond_to do |format|
      if @on_touch_user.update(on_touch_user_params)
        format.html { redirect_to @on_touch_user, notice: 'On touch user was successfully updated.' }
        format.json { render :show, status: :ok, location: @on_touch_user }
      else
        format.html { render :edit }
        format.json { render json: @on_touch_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /on_touch_users/1
  # DELETE /on_touch_users/1.json
  def destroy
    @on_touch_user.destroy
    respond_to do |format|
      format.html { redirect_to on_touch_users_url, notice: 'On touch user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_on_touch_user
      @on_touch_user = OnTouchUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def on_touch_user_params
      params.require(:on_touch_user).permit(:name, :prefix, :email)
    end
end
