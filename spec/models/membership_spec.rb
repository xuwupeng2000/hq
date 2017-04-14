require 'rails_helper'

RSpec.describe Membership, type: :model do
  subject(:klass){ Membership }

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
      it "should belong to a user (user application)"  do 
        expect(klass.last.user).to be_a User
      end

      it "should belong to a app (user application)"  do 
        expect(klass.last.app).to be_a App
      end

      it "should has many app_projects (what's project user interested)"  do 
        expect(klass.last.app_projects.sample).to be_a AppProject
      end
    end
  end

end
