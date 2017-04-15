require 'rails_helper'

RSpec.describe FindUsersForDestinationService, type: :model do
  subject(:klass){ FindUsersForDestinationService }

  describe "#call" do
    context 'with valid destination_id' do
      it "should return User objects"  do 
        expect(klass.call(11).sample).to be_a User
      end
    end

    context 'without valid destination_id' do
      it "should raise error"  do 
        expect{ klass.call(nil) }.to raise_error(ActiveRecord::RecordNotFound)
      end

      it "should raise error"  do 
        expect{ klass.call('NO11') }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end

end
