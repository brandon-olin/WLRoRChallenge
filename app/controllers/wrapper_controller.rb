class WrapperController < ApplicationController
  def home
  end
  
  def wrap
    @unwrapped_string = params[:string]
    @string = params[:string].clone
    @column_number = params[:column_number].to_i
    @string_array = []
    until @string.length <= @column_number
      (@column_number).downto(0) do |i|
        if @string[i] === ' '
          @string_array.push(@string.slice!(0, i))
          @string.strip!
          break
        end
        if (i === @column_number - 5)
          @string_array.push(@string.slice!(0, @column_number))
          @string.strip!
          break
        end
      end
    end
    @string_array.push(@string)
  end
end