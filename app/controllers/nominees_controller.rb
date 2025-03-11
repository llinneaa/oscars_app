class NomineesController < ApplicationController

  def index
    @nominees = Nominee.all
  end

  def show
    @nominee = Nominee.find_by(id: params[:id])
    if @nominee.nil?
      head :not_found
      return
    end
  end
end
