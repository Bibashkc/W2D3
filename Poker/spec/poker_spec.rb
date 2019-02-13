require "rspec" 
require "poker"

describe Card do
    describe "#initialize" do 
        it "initializes a card to the deck" do
            card = Card.new(10, :hearts)
            expect(card).to be_a(Card) 
        end
    end
end

describe Deck do 
    describe "#initialize" do
        it "creates an empty deck" do 
            deck = Deck.new
            expect(deck).to be_a(Deck)
        end
    end
    subject(:deck){Deck.new}
    describe "#fill_deck" do 
        it "fills deck with 52 cards" do 
            card = Card.new(10, :hearts)
            expect(deck.fill_deck).to eq([card]) 
        end
    end
end