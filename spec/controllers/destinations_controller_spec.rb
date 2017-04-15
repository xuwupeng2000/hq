require 'rails_helper'

RSpec.describe DestinationsController, type: :controller do
  render_views

  subject(:klass) {DestinationsController}

  describe "GET index" do

    it "should render the page and return 200 respond"  do 
      get :index

      expect(response.code).to eq '200'
    end
    
  end
end
