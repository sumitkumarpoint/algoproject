class UserController < ApplicationController
  def home
    @users = user.all
  end
  def login

  end
  def signup

  end
end
