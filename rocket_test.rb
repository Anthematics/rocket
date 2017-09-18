gem 'activesupport', '5.1.4'
require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    @rocket=Rocket.new
  end

  def test_has_random_name?
    result = @rocket.name
    assert true
    p result
  end

  def test_has_colour?
    result = @rocket.colour
    p result
  end

  def test_flying?
    result = @rocket.flying?
    refute result
    p result
  end

  def test_can_fly?
    @rocket
    @flying = true
    result= @rocket.lift_off
    assert true
    p result
  end

  def test_no_fly?
    @rocket
    result= @rocket.lift_off
    @flying = false
    assert true
    p result
  end

  def test_can_land?
    @inflight = @rocket.lift_off
    p @rocket.status
    @rocket.land
    p @rocket.status
  end
end

# Remember to run your tests at every opportunity.
# Don't just write all of your tests back to back without running the file,
# and expect to run it once at the end.
# If you're not sure how a particular method works,
 # or what its gonna do, write a test! Tests are a great way to break down how
  # the code works in the first place, and writing them can help your understanding
  #  of what's happening.
# Don't forget to test the positive, negative, and edge cases.
 # Don't just write one test per method and call it a day.
# If you have to decide between writing too many or too few tests,
# choose to write too many. Once you have more experience, you'll
 # figure out where to draw the line.
# Be brave. Experiment. Have fun! Testing isn't rocket science.
# It's just about making sure that things work the way you expect them to.
