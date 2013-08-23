class OfficeProject < ActiveRecord::Base
  belongs_to :office
  belongs_to :project
end
