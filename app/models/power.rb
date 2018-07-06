class Power < ApplicationRecord
  has_many :heroines

  def self.search(search)
  	if search
  		where('name LIKE ?', "%#{search}%")
  	else
  		all
  	end
  end
end
