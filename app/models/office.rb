class Office < ActiveRecord::Base
  has_many :office_projects
  has_many :projects, through: :office_projects

  validates :name, presence: true

  def short_name
    name.downcase.tr(' ','_')
  end
end
