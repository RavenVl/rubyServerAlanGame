class NdController < ApplicationController
  include ApplicationHelper
  
  def show
    @t = pole_str(Nd,"name")
    render :text => @t
  end
  
  def setoc
#    @student = Nd.find(params[:st1])
    @student = Nd.where("name = :us",:us=> params[:st1]).first
    @ocenka = Ocenka.where("name = :us",:us=> params[:n1]).first
    @ocenka1='c'+@ocenka.id.to_s
    case @ocenka.id
      when 1 then @student.c1 = @student.c1.to_i + 1
      when 2 then @student.c2 = @student.c2.to_i + 1
      when 3 then @student.c3 = @student.c3.to_i + 1
      when 4 then @student.c4 = @student.c4.to_i + 1
      when 5 then @student.c5 = @student.c5.to_i + 1
      when 6 then @student.c6 = @student.c6.to_i + 1
      when 7 then @student.c7 = @student.c7.to_i + 1
      when 8 then @student.c8 = @student.c8.to_i + 1
      when 9 then @student.c9 = @student.c9.to_i + 1
    end
    @student.save

        @vivod =@student.name + @ocenka1 
        render :text => @vivod
    
  end
  
  def test
    
  end
end
