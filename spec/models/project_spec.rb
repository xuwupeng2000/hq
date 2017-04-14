require 'rails_helper'

RSpec.describe Project, type: :model do
  subject(:klass){ Project }

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
      it "should belongs_to destination"  do 
        expect(klass.last.destination).to be_a Destination
        expect(klass.last.destination.name).not_to be_empty
      end

      it "should have many app_projects"  do 
        expect(klass.first.app_projects.sample).to be_a AppProject
      end

      it "could have no app_projects but the relationship is still defined"  do 
        expect(klass.last.app_projects.to_a).to be_a Array
      end
    end
  end

end
