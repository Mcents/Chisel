class Chisel
  attr_reader :string,
              :text

  def initialize
    @open_text =  File.open(ARGV[0], "r")
    @text = @open_text.read.chomp
  end





end
