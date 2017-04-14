require 'rails_helper'

RSpec.describe App, type: :model do
  subject(:klass){ App }

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
      describe "description" do
        it "should have existing description"  do 
          expect(klass.last.destination).to be_a Destination
          expect(klass.last.destination.name).not_to be_empty
        end
      end

      describe "memberships" do
        it "should have a number of memberships"  do 
          expect(klass.last.memberships.sample).to be_a Membership
        end
      end

      describe "users" do
        it "should have a number of users"  do 
          expect(klass.last.users.sample).to be_a User
          expect(klass.last.users.sample.email).not_to be_empty
        end
      end

      describe "app_projects" do
        it "should have a number of app_projects"  do 
          expect(klass.last.app_projects.sample).to be_a AppProject
        end
      end
    end
  end

end
