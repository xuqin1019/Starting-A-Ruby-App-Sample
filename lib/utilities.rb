module Utilities
  
  def echo(msg, colour = :white)
    colour = ::HighLine.const_get(colour.to_s.upcase)
    say(%{<%= color("#{msg}",  "#{colour}") %>})
  end
  
end