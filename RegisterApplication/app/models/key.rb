class Key < ActiveRecord::Base
  validates :name,
            presence: true
end


