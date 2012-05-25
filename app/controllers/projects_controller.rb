class ProjectsController < ApplicationController
  before_filter :find_project,only: [:edit,
                                     :update,
                                     :show,
                                     :destroy]
  def index
    @projects = Project.order :title
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new params[:project]

    if @project.save
      redirect_to @project, notice: "Project has been created"
    else
      flash[:alert]="Project has not been created"
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    @project.update_attributes! params[:project]
    redirect_to @project,notice: "Project has been updated"
  rescue
    flash[:alert]="Project has not been updated"
    render "edit"
  end

  def destroy
    @project.destroy
    redirect_to root_url,notice: "Project has been deleted."
  end

private
  def find_project  
    @project = Project.find params[:id]
  rescue
    redirect_to root_url, alert: "The project you looking for hasnot been found"
  end
end
