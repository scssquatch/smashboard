class Office < ActiveRecord::Base
  validates :name, presence: true

  def short_name
    name.downcase.tr(' ','_')
  end
end
