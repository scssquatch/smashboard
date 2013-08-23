require 'spec_helper'

describe Project do
  before (:each) do
    @office = FactoryGirl.create(:office)
    @project = FactoryGirl.create(:project, offices: [@office])
  end

  it "has a valid factory" do
    @project.should be_valid
  end

  it "must belong to at least one office" do
    @project.offices.clear
    @project.should_not be_valid
  end

  it "can belong to multiple offices" do
    @office_2 = FactoryGirl.create(:office)
    @project.offices << @office_2
    @project.offices.should include(@office, @office_2)
  end

  it "is selected by default" do
    @project.selected.should be_true
  end

end
