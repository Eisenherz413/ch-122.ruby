class IssuesController < ApplicationController
  before_action :set_issue, only: %i[ show edit update destroy ]
  # GET /issues or /issues.json
  def index
    @issues = Issue.all.order(:status).paginate(:page => params[:page], :per_page => 7)
    authorize! :read, Issue
  end

  # GET /issues/1 or /issues/1.json
  def show
    authorize! :read, Issue
  end

  # GET /issues/new
  def new
    @issue = Issue.new
    authorize! :create, Issue
  end

  # GET /issues/1/edit
  def edit
  end

  # POST /issues or /issues.json
  def create
    @issue = Issue.new(issue_params)

    respond_to do |format|
      if @issue.save
        format.html { redirect_to issues_url, notice: t('.controller.issue_successfully_created') }
        format.json { render :index, status: :created, location: @issue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
    authorize! :create, Issue
  end

  def mark_closed
    issue = Issue.find(params[:id])
    respond_to do |format|
      format.html { redirect_to issues_url, notice: "Issue was successfully closed" }
      format.json { head :no_content }
    end

    issue.update_attribute('status', 2)

  end

  def close
    issue = Issue.find(params[:id])
    respond_to do |format|
      format.html { redirect_to issues_managers_url, notice: "You have changed issue status" }
      format.json { head :no_content }
    end

    issue.update_attribute('status', 2)

  end

  def proceed
    issue = Issue.find(params[:id])
    respond_to do |format|
      format.html { redirect_to issues_managers_url, notice: "You have changed issues status" }
      format.json { head :no_content }
    end
    issue.update_attribute('status', 1)
  end

  # PATCH/PUT /issues/1 or /issues/1.json
  def update
    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to @issue, notice: "Issue was successfully updated." }
        format.json { render :show, status: :ok, location: @issue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1 or /issues/1.json
  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url, notice: "Issue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_issue
    @issue = Issue.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def issue_params
    params.require(:issue).permit(:category_id, :user_id, :text, :status)
  end
end
