class Heroine < ApplicationRecord

  belongs_to :power

  validates :super_name, uniqueness: true

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
