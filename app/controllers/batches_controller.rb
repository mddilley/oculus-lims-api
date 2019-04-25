class BatchesController < ApplicationController

  def index
    batches = Batch.all
    render json: BatchSerializer.new(batches).serialized_json
  end

  def show
    batch = Batch.find(params[:id])
    render json: BatchSerializer.new(batch).serialized_json
  end

  def create
    # binding.pry
    batch = Batch.create(batch_params)
  end

  private

    def batch_params
      params.require(:batch).permit(:creator, :date)
    end

end
