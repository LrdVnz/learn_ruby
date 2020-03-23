class Timer
   def initialize
   @seconds = 0 
   end

   def seconds 
    @seconds 
   end

   def seconds=(seconds)
     @seconds = seconds 
   end
   
   def padded num
      @num = num
   "%02d" %[num]
   end

   def time_string 
      if @seconds < 60
    "00:00:%02d" %[seconds]
      else 
         minutes = @seconds / 60
         seconds = @seconds % 60
         hours = minutes / 60
           if hours
            minutes = (@seconds % 3600) / 60
           end
      "%02d:%02d:%02d" %[hours, minutes, seconds]
      end
   end
end
