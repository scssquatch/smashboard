class Office < ActiveRecord::Base
  has_many :office_projects
  has_many :projects, through: :office_projects

  validates :name, presence: true

  def short_name
    name.downcase.tr(' ','_')
  end

  def selected?
    selected_projects.present?
  end

  def selected_projects
    projects.where(selected: true)
  end
end
