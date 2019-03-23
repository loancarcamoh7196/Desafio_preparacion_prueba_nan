class Project < ApplicationRecord
    has_many :workshops
    has_many :persons, through: :workshops
end
