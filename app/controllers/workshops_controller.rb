class WorkshopsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @workshop = Workshop.new(workshop_params)
    @workshop.project_id = params[:project_id]
    @workshop.save
    redirect_to project_path(params[:project_id]), notice: 'Ha agregado una nueva persona al proyecto'
  end

  def destroy
    @workshop = Workshop.find(params[:id])
    @workshop.destroy
    redirect_to project_path(params[:project_id]), notice: 'Ha eliminado una persona del proyecto'
  end

  private

  def workshop_params
    params.require(:workshop).permit(:person_id, :project_id)
  end

end
