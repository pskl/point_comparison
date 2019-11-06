module Point
  class Comparison
    def initialize(points:)
      @points = points
    end

    def self.call(points: )
      new(points: points)
    end

    def closest
      sorted_list.first
    end

    def most_distant
      sorted_list.last
    end

    private

    def sorted_list
      @sorted ||= @points.permutation(2).sort_by { |p| distance(*p) }
    end

    def distance(point_a, point_b)
      Math.sqrt((point_b[0] - point_a[0])**2 + (point_b[1]-point_a[1])**2).round(2)
    end
  end
end