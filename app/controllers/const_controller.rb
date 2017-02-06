class ConstController < ApplicationController
  def show
    @kol = Const.where(:name=> "mykol")
    k = @kol.first 
    @mykol=k.val
    render :text => @mykol
  end
end
