class PrimerSizesController < ApplicationController
  def index
    @primer_sizes = PrimerSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @primer_sizes }
    end
  end

  def show
    @primer_size = PrimerSize.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @primer_size }
    end
  end
end
