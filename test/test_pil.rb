require 'helper'

class PilTest < Test::Unit::TestCase

  def setup
    @in_list      = 'peachy'
    @not_in_list  = 'notinlist'
    @instance     = Pil.new
  end

  def test_self_include?
    assert_equal( true, Pil.include?(@in_list) )
    assert_equal( false, Pil.include?(@not_in_list) )
  end

  def test_self_exlude?
    assert_equal( false, Pil.exclude?(@in_list) )
    assert_equal( true, Pil.exclude?(@not_in_list) )
  end

  def test_include?
    assert_equal( true, @instance.include?(@in_list) )
    assert_equal( false, @instance.include?(@not_in_list) )
  end

  def text_exclude?
    assert_equal( false, @instance.exclude?(@in_list) )
    assert_equal( true, @instance.exclude?(@not_in_list) )
  end

end
