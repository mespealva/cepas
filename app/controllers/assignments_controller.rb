class AssignmentsController < ApplicationController
    def create
      project = Project.find(params[:project_id])
      worker = Worker.find(params[:worker][:worker_id])
      project.workers.push(worker)
      project.save
      redirect_to project_path(project)
    end
  
    def destroy
      project = Project.find(params[:project_id])
      worker = Worker.find(params[:worker_id])
      project.workers.delete(worker)
      project.save
      redirect_to root_path(project)
    end
  end
  