require('minitest/autorun')
require('minitest/rg')
require_relative("../cardgame")
require_relative("../card")

class CardGameTest < Minitest::Test

  def setup
    @cardA = Card.new("hearts", 1)
    @cardB = Card.new("spades", 10)
    @cardC = Card.new("clubs", 5)
    @cards = [@cardA, @cardC]
  end

  def test_check_for_ace
    assert_equal(true, check_for_ace(@cardA))
    assert_equal(false, @cardB.check_for_ace)
  end

  def test_card_name
    assert_equal("5 of clubs", card_name(@cardC))
  end

  def test_highest_card
    assert_equal("10 of spades", highest_card(@cardC, @cardB))
  end

  def test_cards_total
    assert_equal("You have a total of 6", cards_total(@cards))
  end

end
