class IssuesManagersController < ApplicationController
  helper_method :sort_column, :sort_direction
  # GET /issues_managers or /issues_managers.json
  def index
    @issues = Issue.order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 5)
    authorize! :update, Issue
  end

  private

  def sort_column
    Issue.column_names.include?(params[:sort]) ? params[:sort] : 'category_id'
  end

  def sort_direction
    %w(asc desc).include?(params[:direction]) ? params[:direction] : 'asc'
  end

end
