require 'rails_helper'

RSpec.describe UserProfile, type: :model do
  subject(:klass){ UserProfile }

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
      describe "user" do
        it "should belong to user"  do 
          expect(klass.last.user).to be_a User
          expect(klass.last.user.email).to_not be_empty
        end
      end
    end
  end

end
