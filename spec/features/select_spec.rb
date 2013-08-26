require 'spec_helper'

describe "SelectingProjects" do
  before(:all) do
    @office = Office.create(name: 'Columbus')
    @project = Project.create(name: 'Nexia Pro', offices: [@office])
  end

  it "deselects a selected project when clicking", js: true do
    # @project.update_attribute(:selected, true)
    # visit root_path
    # click_link @office.name
    # page.should have_content(@project.name)
    # @project.selected.should be_true
    # click_link @project.name
    # sleep 1
    # Project.find(@project.id).selected.should be_false
  end

  it "selects a deselected project when clicking", js: true do
    # @project.update_attribute(:selected, false)
    # visit root_path
    # click_link @office.name
    # page.should have_content(@project.name)
    # @project.selected.should be_false
    # click_link @project.name
    # save_and_open_page
    # Project.find(@project.id).selected.should be_true
  end
end
