class CountsController < ApplicationController

  def show_release
    @release = JobNavigator.find_release(params)
  end
  
  def show_count
    @drawings = Drawing.all
  end

end
