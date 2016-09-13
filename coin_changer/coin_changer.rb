require "minitest/autorun"
require_relative "changefunction.rb"

class TestChangeFunction < Minitest::Test

	def test_0_cents_returns_empty_hash
		cents_received = 0
		assert_equal({}, coin_changer(cents_received))
	end

	def test_one_cent_is_one_penny
		cents_received = 1
		assert_equal({:penny => 1}, coin_changer(cents_received))
	end

	# def test_six_cents_equals_one_nickel_and_one_penny
	# 	cents_received = 6
	# 	assert_equal({:penny => 1, :nickel => 5})
	# end

end

