class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @companies = current_user.companies
  end
end