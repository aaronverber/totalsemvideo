class WelcomeController < ApplicationController
  before_filter :require_no_user, :only => []
  before_filter :require_user, :only => []

  def index
    @user = current_user
  end
end
