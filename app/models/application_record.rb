class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  validates :password, length: { minimum: 7 }
end
