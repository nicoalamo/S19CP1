class AllocationsController < ApplicationController
  def index
  end

  def create
    @worker = Worker.find(params[:worker_id])
    @proyect = Proyect.find(params[:proyect_id])
    @allocation = Allocation.new(worker: @worker, proyect: @proyect)
    @allocation.save
    case URI(request.referer).path
        when worker_path(@worker)
        redirect_to worker_path(@worker)
        when proyect_path(@proyect)
        redirect_to proyect_path(@proyect)
    end
  end

  def destroy
    @worker = Worker.find(params[:worker_id])
    @proyect = Proyect.find(params[:proyect_id])
    @allocation = Allocation.find_by(worker: @worker, proyect: @proyect)
    @allocation.destroy
    case URI(request.referer).path
        when worker_path(@worker)
        redirect_to worker_path(@worker)
        when proyect_path(@proyect)
        redirect_to proyect_path(@proyect)
    end
  end
end
