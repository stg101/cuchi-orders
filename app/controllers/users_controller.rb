class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params['id'])
  end

  def make_order
    @products = Product.all
    render 'users/make_order'
  end
end
