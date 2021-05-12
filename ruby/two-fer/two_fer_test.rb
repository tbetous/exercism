require 'minitest/autorun'
require_relative 'two_fer'

# Common test data version: 1.2.0 4fc1acb
class TwoFerTest < Minitest::Test
  def test_no_name_given
    # skip
    assert_equal 'One for you, one for me.', TwoFer.two_fer
  end

  def test_a_name_given
    assert_equal 'One for Alice, one for me.', TwoFer.two_fer('Alice', :English)
  end

  def test_another_name_given
    assert_equal 'One for Bob, one for me.', TwoFer.two_fer('Bob', :English)
  end

  def test_another_name_given_in_spanish
    assert_equal 'Uno para el Bob, uno para mí.', TwoFer.two_fer('Bob', :Spanish)
  end
end
