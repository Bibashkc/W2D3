class Card
    SUITS = [spades,clubs,diamonds,hearts]
    FACE_VALUE = (2..10).to_a.map(&:to_s) + ["J","Q","K","A"]
    attr_reader :number,suit

    def initialize(suit, number)
        @number = number
        @suit = suit
    end
end

class Deck
    attr_reader :deck
    def initialize
        @deck = []
    end

    def fill_deck
        card.SUITS.each do |suit|
            card.FACE_VALUE.each do |fv|
                deck << Card.new(suit,fv)
            end
        end
        deck
    end
end