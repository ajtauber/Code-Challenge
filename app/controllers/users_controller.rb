class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
       session[:user_id] = @user.id
       redirect_to root_path
     else
       render :new
     end
  end

  def edit
    
  end


end
