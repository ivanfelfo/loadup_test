require 'rails_helper'

RSpec.describe ServicesController, type: :controller do
  describe 'POST #price_calculator' do
    it 'calculates the price' do
      post :price_calculator, params: { animal_type: 'cat', duration: '4' }
      expect(response).to render_template('services/price_calculator')
      expect(assigns(:price)).to eq(40)
    end
  end
end
