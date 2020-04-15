require 'rails_helper'

RSpec.describe MatchStatisticsController, type: :controller do
  let(:statistics) { create_list :match_statistic, 3 }

  describe 'GET #index' do
    before { get :index }

    it 'populates an array of all statistics' do
      expect(assigns(:match_statistics)).to match_array(statistics)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end
end
