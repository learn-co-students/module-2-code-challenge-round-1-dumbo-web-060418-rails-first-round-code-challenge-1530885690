class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, { uniqueness: true, presence: true }
  validates :name, presence: true
  validates :power_id, presence: true

  def power_name
    if self.power
      self.power.name
    else
      nil
    end
  end

  def power_description
    if self.power
      self.power.description
    else
      nil
    end
  end
end
