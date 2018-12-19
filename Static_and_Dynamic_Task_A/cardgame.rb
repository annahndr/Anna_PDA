require_relative("card")

class CardGame

  attr_accessor :card1, :card2

  def initialize(card1, card2)
    @card1 = card1
    @card2 = card2
    @cards = []
  end

  def check_for_ace(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

  def card_name(card)
    return "#{card.value} of #{card.suit}"
  end

  def highest_card(card1, card2)
    if card1.value > card2.value
      return card1.card_name
    else
      return card2.card_name
    end
  end

  def self.cards_total(cards)
   cards =
    for card in cards
      total += card.value
    end
      return "You have a total of #{total}"
  end

end
