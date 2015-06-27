class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def login
    @user = User.new
  end

  def auth
    @user = User.new(user_params_login)

    if !@user.user_password.blank? && !@user.user_login.blank?  

      @found_user = User.get_user_by_login @user.user_login

      if(@found_user != nil)
        
        if @found_user.user_password == @user.user_password

          session[:current_user_name] = @found_user.user_name
          flash[:notice] = "Seja bem-vindo, #{session[:current_user_name]}!"
          redirect_to action: "home";

        else
          flash[:notice] = "Usuário ou senha incorretos. Informe novamente."
          redirect_to action: "login"
        end

      else
        flash[:notice] = "Usuário não encontrado."
        redirect_to action: "login"
      end

    else
        flash[:notice] = "Informe um login e uma senha para acessar o sistema."
        redirect_to action: "login"
    end

  end

  def home

  end

  def logout
    session[:current_user_name] = nil
    flash[:info] = "Acesso encerrado com sucesso!"
    redirect_to action: "login"
  end
  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Seja bem-vindo!' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :user_login, :user_password, :user_patent)
    end

    def user_params_login
      params.require(:user).permit(:user_login, :user_password)
    end
end
