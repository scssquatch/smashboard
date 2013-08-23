class Project < ActiveRecord::Base
  has_many :office_projects
  has_many :offices, through: :office_projects

  validates :offices, presence: true

  def select
    selected = !selected
  end
end
