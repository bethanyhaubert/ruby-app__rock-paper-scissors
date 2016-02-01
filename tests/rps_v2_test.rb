require 'test_helper'
require 'rps_v2'

class RockPaperScissorsTest < Minitest::Test

	def test_player_one_win
		sample_game =  RockPaperScissorsGame.new
		sample_game.set_p1_weapon("rock")
		sample_game.set_p2_weapon("scissors")
	  	assert_equal(@player1, sample_game.find_winner)
	end

	def test_player_two_win
		sample_game =  RockPaperScissorsGame.new
		sample_game.set_p1_weapon("scissors")
		sample_game.set_p2_weapon("rock")
	  	assert_equal(@player2, sample_game.find_winner)
	end


	def test_game_draw
		sample_game =  RockPaperScissorsGame.new
		sample_game.set_p1_weapon("rock")
		sample_game.set_p2_weapon("rock")
	  	assert_equal(nil, sample_game.find_winner)
	end

	def test_overall_draw_true
		sample_game =  RockPaperScissorsGame.new
		@player1 = sample_game.set_p1_name("Beth")
		@player2 = sample_game.set_p2_name("Hal")
		score = {@player1 => 3, @player2 => 3}

		assert_equal(true, sample_game.overall_draw?(score))
	end

	def test_overall_draw_false
		sample_game =  RockPaperScissorsGame.new
		@player1 = sample_game.set_p1_name("Beth")
		@player2 = sample_game.set_p2_name("Hal")
		score = {@player1 => 2, @player2 => 3}

		assert_equal(false, sample_game.overall_draw?(score))
	end


end