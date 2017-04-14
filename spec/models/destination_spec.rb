require 'rails_helper'

RSpec.describe Destination, type: :model do
  subject(:klass){ Destination }

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
      describe "has many projects" do
        it "should have a number of projects"  do 
          expect(klass.last.projects.sample).to be_a Project
        end
      end

      describe "has many apps" do
        it "should have a number of apps"  do 
          expect(klass.last.apps.sample).to be_a App
        end
      end
    end
  end

end
