require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:klass){ User }

  describe "attributes" do
    xit "is not part of the test"  do 
      
    end
  end

  describe "validation" do
    xit "is not part of the test"  do 
      
    end
  end

  describe "esixting data" do
    describe "the relationships defined on ERD and database are matched" do
      describe "user profile" do
        it "should have existing user profile"  do 
          expect(klass.last.user_profile).to be_a UserProfile
        end
      end

      describe "memberships" do
        it "should have a number of memberships"  do 
          expect(klass.last.memberships.sample).to be_a Membership
        end
      end
    end
  end

end
