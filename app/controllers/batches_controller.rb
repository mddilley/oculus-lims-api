class BatchesController < ApplicationController

  def index
    batches = Batch.all
    render json: BatchSerializer.new(batches).serialized_json
  end

  def show
    batch = Batch.find(params[:id])
    render json: BatchSerializer.new(batch).serialized_json
  end

end
