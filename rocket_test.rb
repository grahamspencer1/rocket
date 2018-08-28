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

  def test_colour_with_given_colour
    @rocket = Rocket.new(colour: "red")
    expected = "red"
    actual = @rocket.colour
    assert_equal(expected, actual)
  end

  def test_flying_equals_true
    @rocket = Rocket.new(flying: true)
    assert @rocket.flying?
  end

  def test_lift_off_true_when_rocket_not_flying
    @rocket = Rocket.new(flying: false)
    expected = true
    actual = @rocket.lift_off
    assert_equal(expected, actual)
  end

  def test_land_true_when_rocket_is_flying
    @rocket = Rocket.new(flying: true)
    expected = true
    actual = @rocket.land
    assert_equal(expected, actual)
  end

  def test_status_when_rocket_is_flying
    @rocket = Rocket.new(name: "Gemini", flying: true)
    expected = "Rocket Gemini is flying through the sky!"
    actual = @rocket.status
    assert_equal(expected, actual)
  end

  def test_status_when_rocket_is_not_flying
    @rocket = Rocket.new(name: "Gemini", flying: false)
    expected = "Rocket Gemini is ready for lift off!"
    actual = @rocket.status
    assert_equal(expected, actual)
  end

end
