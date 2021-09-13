
class Player

  attr_accessor :name, :lives


  def initialize

    @lives = 3
  end



  def dec_live
    @lives = @lives-1
    puts @lives
  end

end