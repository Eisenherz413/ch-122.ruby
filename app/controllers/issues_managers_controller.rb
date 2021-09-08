class IssuesManagersController < ApplicationController

  # GET /issues_managers or /issues_managers.json
  def index
    @issues = Issue.all.order(params[:sort]).paginate(:per_page => 5, :page => params[:page])
  end

end
