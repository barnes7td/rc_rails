class DrawingsController < ApplicationController
  def show
    @drawing = Drawing.find(params[:id])
  end
end
