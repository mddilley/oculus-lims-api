class SamplesController < ApplicationController

  def index
    samples = Sample.where('batch_id = ?', params[:batch_id])
    render json: SampleSerializer.new(samples).serialized_json
  end

  def create
    sample = Sample.create(sample_params)
    render json: SampleSerializer.new(sample).serialized_json
  end

  def destroy
    Sample.find(params[:id]).delete
  end

  private

    def sample_params
      params.require(:sample).permit(:sample_cuid, :first_name, :last_name, :age, :batch_id)
    end
end
