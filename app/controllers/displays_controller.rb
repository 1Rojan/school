class DisplaysController < ApplicationController

  def show
    if params.include?'teamCategory_id'
      @team = TeamCategory.find(params[:teamCategory_id]).team.all
      @category = TeamCategory.find(params[:teamCategory_id]).name
    # elsif params.include?'project_id'
    #   @project = Project.find(params[:project_id])
    # elsif params.include?'client_id'
    #   @client = Client.find(params[:client_id])
    # elsif params.include?'clients'
    #   @projects = Project.all.find(params[:projects])
    # elsif params.include?'team_id'
    #   @team = TeamMember.all.find(params[:team_id])
    end
  end

  def index
    if params[:index] == "gallery"
      @gallery = Gallery.all
    elsif params[:index] == "notice"
      @notices = Notice.all
    # elsif params[:index] == "completedProjects"
    #   @completedProjects = Project.all.where(status: 1)
    # elsif params[:index] == "clients"
    #   @clients = Client.all
    end
  end

end
