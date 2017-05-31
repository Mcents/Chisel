require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'
require 'pry'


class ChiselTest < MiniTest::Test

  def test_it_exists

    assert Chisel, Chisel.new("a")
  end


  # def test_it_can_convert_to_html
  #   markdown = '# My Life in Desserts
  #
  #   ## Chapter 1: The Beginning
  #
  #   "You just *have* to try the cheesecake," he said. "Ever since it appeared in
  #   **Food & Wine** this place has been packed every night."'
  #
  #   expected_convert = '<h1>My Life in Desserts</h1>
  #
  #   <h2>Chapter 1: The Beginning</h2>
  #
  #   <p>
  #   "You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in
  #   <strong>Food &amp; Wine</strong> this place has been packed every night."
  #   </p>'
  #
  #   html = Chisel.new(markdown).convert_to_html
  #   assert_equal expected_convert, html
  #
  # end

  def test_it_turns_strings_into_chunks
    markdown = "a\nbbca\nbc\n"
    actual = Chisel.new("").string_to_chunks(markdown)
    expected = ["a", "bbca", "bc"]

    assert_equal expected, actual
  end







end
