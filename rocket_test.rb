require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_initialize_with_defaults_sets_random_name
    expected = String
    actual = @rocket.name.class
    assert_equal(expected, actual)
  end

  def test_initialize_with_defaults_sets_random_colour
    expected = String
    actual = @rocket.colour.class
    assert_equal(expected, actual)
  end

  def test_initialize_with_defaults_sets_flying_as_false
    expected = false
    actual = @rocket.flying?
    assert_equal(expected, actual)
  end

  def test_name_with_given_name
    @rocket = Rocket.new(name: "Sputnik")
    expected = "Sputnik"
    actual = @rocket.name
    assert_equal(expected, actual)
  end

end
