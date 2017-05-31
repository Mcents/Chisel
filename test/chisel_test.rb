require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'
require 'pry'


class ChiselTest < MiniTest::Test

  def test_it_exists

    assert Chisel, Chisel.new
  end


  def test_it_initializes_input_markdown
    c = Chisel.new

    assert_equal "This is the first line of the paragraph.", c.text
  end







end
