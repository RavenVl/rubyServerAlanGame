module ApplicationHelper
  def pole_str (base, name)
    @o_name = ""
    @ocenkas = base.select(name).where(:myis=> true)
    @ocenkas.each { |o| @o_name = @o_name + o.name + "," }
     @o_name.chomp!(",")
   end
end
