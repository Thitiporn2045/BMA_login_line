class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = session[:user]
  end

  private

  def authenticate_user!
    redirect_to login_path unless session[:user].present?
  end
end
