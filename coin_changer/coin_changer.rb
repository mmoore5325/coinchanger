require "minitest/autorun"
require_relative "changefunction.rb"

class TestCoinChanger < Minitest::Test
	
	def test_0_cents_returns_empty_hash
		assert_equal({}, coin_changer(0))
	end

	def test_1_cent_equals_1_penny
		assert_equal({:penny => 1}, coin_changer(1))
	end

	def test_two_cents_returns_two_pennys
		assert_equal({:penny => 2}, coin_changer(2))
	end

	def test_five_cents_returns_one_nickle
		assert_equal({:nickle => 1}, coin_changer(5))
	end
	
	# def test_six_cents_returns_one_and_one
	# 	cents = 6
	# 	assert_equal({:nickle => 1, :penny =>1}, coin_changer(cents))
	# end
	
end
