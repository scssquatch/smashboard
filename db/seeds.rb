# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create the Offices
["Columbus", "Cincinnati", "San Francisco", "New York", "Montevideo", "Edinburgh", "Singapore"].each do |office|
  Office.find_or_create_by(name: office)
end

# Columbus Projects
["Grok and Banter", "Forever", "AT&T OAuth", "Nexia Pro", "The Weather Channel", "Threadsuite"].each do |project|
  columbus_project = Project.find_or_create_by(name: project)
  columbus_project.offices << Office.find_by(name: "Columbus")
  columbus_project.save
end

# Cincinnati Projects
["ICANN", "Nexia Home", "Nexia Pro", "AT&T Dev Portal Launch Push"].each do |project|
  cincinnati_project = Project.find_or_create_by(name: project)
  cincinnati_project.offices << Office.find_by(name: "Cincinnati")
  cincinnati_project.save
end

# San Francisco Projects
["Adobe", "Grok and Banter"].each do |project|
  san_francisco_project = Project.find_or_create_by(name: project)
  san_francisco_project.offices << Office.find_by(name: "San Francisco")
  san_francisco_project.save
end

# New York Projects
["ICANN", "Pitney Bowes", "The Weather Channel", "Time", "Turnstone"].each do |project|
  new_york_project = Project.find_or_create_by(name: project)
  new_york_project.offices << Office.find_by(name: "New York")
  new_york_project.save
end

# Montevideo Projects
["AT&T AlphaAuth", "AT&T API Matrix", "Fastacash", "ICANN", "Time", "Turnstone"].each do |project|
  montevideo_project = Project.find_or_create_by(name: project)
  montevideo_project.offices << Office.find_by(name: "Montevideo")
  montevideo_project.save
end

# Edinburgh Projects
["Turnstone", "0 - Sailfish"].each do |project|
  edinburgh_project = Project.find_or_create_by(name: project)
  edinburgh_project.offices << Office.find_by(name: "Edinburgh")
  edinburgh_project.save
end

# Singapore Projects
["Fastacash", "Finch", "Virtual HR", "X_Dragon_Wealth_"].each do |project|
  singapore_project = Project.find_or_create_by(name: project)
  singapore_project.offices << Office.find_by(name: "Singapore")
  singapore_project.save
end
