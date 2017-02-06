class OcenkaController < ApplicationController
  include ApplicationHelper
  
  def show
    @t = pole_str(Ocenka,"name")
    render :text => @t
  end
  

end
