require_relative 'point_comparison'

describe Point::Comparison do
  let(:example_input) do
    [
      [1, 2],
      [2, 3],
      [99, 99]
    ]
  end
  subject { Point::Comparison }

  describe '#closest' do
    it 'returns the two closest points from the input' do
      expect(subject.call(points: example_input).closest).to eq [[1, 2], [2, 3]]
    end

    it 'returns nil if input is empty' do
      expect(subject.call(points: []).closest).to eq nil
    end
  end

  describe 'distance' do
    it 'returns the distance between 2 points' do
      expect(subject.new(points: []).send(:distance, [1,1], [2, 2])).to eq 1.41
    end
  end

  describe '#most_distant' do
    it 'returns the two most distant points from the input' do

      expect(subject.call(points: example_input).most_distant).to eq [[99, 99], [1, 2]]
    end

    it 'returns nil if input is empty' do
      expect(subject.call(points: []).most_distant).to eq nil
    end
  end
end