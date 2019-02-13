require "rspec"
require "array"

describe Array do
    describe "#my_uniq" do
        it "returns unique elements from the array" do
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3]) 
        end
    end

    describe "#two_sum" do 
        it "returns indices of all pairs of positions that sum to 0" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "#my_transpose" do 
        it "returns a transposed array" do 
            arr = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
            ]
            result =  [
                      [0, 3, 6],
                      [1, 4, 7],
                      [2, 5, 8]
                    ]
            expect(arr.my_transpose).to eq(result)
        end
    end

    describe "#stock_picker" do 
        it "returns the most profitable pair of days on which to first buy for the stock and sell the stock" do 
            arr = [50, 10, 70, 100, 5]
            expect(arr.stock_picker).to eq([1, 3])
        end
    end
end

describe Hanoi do 
    subject(:hanoi){Hanoi.new}
    describe "#won?" do 
        context "when the game is won" do 
            before(:each) do
            hanoi.make_move(0,1)
            hanoi.make_move(0,2)
            hanoi.make_move(1,2)
            hanoi.make_move(0,1)
            hanoi.make_move(2,0)
            hanoi.make_move(2,1)
            hanoi.make_move(0,1) 
            end
            it "returns true" do
                expect(hanoi.won?).to be true 
            end
        end
    end

end


