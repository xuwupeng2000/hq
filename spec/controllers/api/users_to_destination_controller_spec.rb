require 'rails_helper'

RSpec.describe Api::UsersToDestinationController, type: :controller do
  render_views

  subject(:klass) {Api::UsersToDestinationController}

  describe "GET index" do

    it "should render the page and return 200 respond"  do 
      get :index, format: :json

      expect(response.code).to eq '200'
      expect(response.body).not_to be_empty
    end
    
  end
end
