require 'rails_helper'

RSpec.describe Simulation, type: :model do 
  describe '.calculate_without_plan' do
      it 'success' do
        simulation = Simulation.new
        expect(simulation.calculate_without_plan(3, 1)).to eq(3)
        expect(simulation.calculate_without_plan(30, 3)).to eq(90)
        expect(simulation.calculate_without_plan(0, 3)).to eq(0)
      end
  end

  describe '.calculate_with_plan' do
    it 'success' do
      simulation = Simulation.new
      expect(simulation.calculate_with_plan(30, 1.1, 30)).to eq(0.0)
      expect(simulation.calculate_with_plan(10, 1.1, 30)).to eq(0.0)
      expect(simulation.calculate_with_plan(-1, 1.1, 30)).to eq(0.0)
      expect(simulation.calculate_with_plan(31, 1.1, 30)).to eq(3.3)
      expect(simulation.calculate_with_plan(30, 3.0, 30)).to eq(90.0)
    end
  end

end

