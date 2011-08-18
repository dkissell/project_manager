class ProjectsController < ApplicationController

  respond_to :html, :xml

  # GET /projects
  # GET /projects.xml
  def index
    @projects = Project.all

    respond_with @projects
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @project = Project.find(params[:id])

    respond_with @project
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @project = Project.new

    respond_with @project
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @project = Project.new(params[:project])

    if @project.save
      flash[:notice] = "Project was successfully created."
    end

    respond_with @project
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(params[:project])
      flash[:notice] = "Project was successfully updated."
    end

    respond_with @project
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_with @project
  end
  
end
