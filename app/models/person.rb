class Person < ApplicationRecord
    has_many :workshops
    has_many :projects, through: :workshops
end
