class AdminDashboardController < ApplicationController
  before_action :authenticate_admin!

  def index
    @subjects = Subject.all
  end
end
