class Array
    def my_uniq
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] = true
        end
        hash.keys
    end

    def two_sum
        new_arr = []
        (0...self.length).to_a.combination(2).to_a.each do |arr|
            new_arr << arr if self[arr.first] + self[arr.last] == 0 
        end
        new_arr
    end

    def my_transpose
        new_arr = Array.new(3){Array.new(3)}
        self.each_with_index do |row,idx1|
            row.each_with_index do |column,idx2|
              new_arr[idx2][idx1]=column
            end
        end
        new_arr
    end

    def stock_picker
        prev_best = 0
        arr = []
        self.each_with_index do |price1, day1|
            self.each_with_index do |price2, day2|
                if day1 < day2 && price2 - price1 > prev_best
                    prev_best = price2 - price1
                    arr << [day1, day2]
                end
            end
        end
        arr[-1]
    end
end

class Hanoi
    attr_reader :a

    def initialize
        @a = [[1, 2, 3],[],[]] 
    end

    def make_move(to, from)
        
    end

    def won?
        a[0].empty?&&(a[1].empty?||a[2].empty?)
    end
end



