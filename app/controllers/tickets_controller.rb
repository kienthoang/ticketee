class TicketsController < ApplicationController
  before_filter :find_project
  before_filter :find_ticket , only: [:show, 
                                      :edit,
                                      :update,
                                      :destroy]

  def show
  end

  def new
    @ticket=@project.tickets.new
  end

  def create
    @ticket=@project.tickets.new params[:ticket]


    respond_to do |format|
      if @ticket.save
        format.html {redirect_to [@project,@ticket],notice: "Ticket has been created."}
      else
        format.html {
          flash[:alert]="Ticket has not been created"
          render "new"
        }
      end
    end
  end

  def edit
  end

  def update
    @ticket.update_attributes! params[:ticket]
    redirect_to [@project,@ticket],notice: "Ticket has been updated."

  rescue
    flash[:alert]="Ticket has not been updated."
    render "edit"
  end

  def destroy
    @ticket.destroy
    redirect_to @project,notice: "Ticket has been deleted."
  end

private
  def find_project
    @project = Project.find params[:project_id]
  rescue
    redirect_to root_url, alert: "The project you looking for has not been found" 
  end

  def find_ticket
    @ticket= @project.tickets.find params[:id] 
  rescue
    redirect_to root_url, alert: "The project you looking for has not been found" 
  end
end
