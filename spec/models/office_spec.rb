require 'spec_helper'

describe "NewOffices" do
  before (:each) do
    @office = FactoryGirl.build(:office)
  end

  it "should have a valid factory" do
    @office.should be_valid
  end

  it "should create a html class friendly name" do
    @office.short_name.should eq(@office.name.downcase.tr(' ','_'))
  end

  it "should not be selected by default" do
    @office.selected.should eq(false)
  end

  it "should require a name" do
    FactoryGirl.build(:office, :name => "").should_not be_valid
  end
end
