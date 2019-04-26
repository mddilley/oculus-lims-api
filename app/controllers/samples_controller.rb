class SamplesController < ApplicationController

  def index
    samples = Sample.where('batch_id == ?', params[:batch_id])
    render json: SampleSerializer.new(samples).serialized_json
  end

  def destroy
    Sample.find(params[:id]).delete
  end

end
