require 'rails_helper'

RSpec.describe Service, type: :model do
  describe '.calculate_total_cost' do
    context 'when animal_type is "dog"' do
      it 'returns the correct total cost' do
        animal_type = 'dog'
        duration = 2

        total_cost = Service.calculate_total_cost(animal_type, duration)

        expect(total_cost).to eq(40)
      end
    end

    context 'when animal_type is "cat"' do
      it 'returns the correct total cost' do
        animal_type = 'cat'
        duration = 2

        total_cost = Service.calculate_total_cost(animal_type, duration)

        expect(total_cost).to eq(30)
      end
    end
  end
end
