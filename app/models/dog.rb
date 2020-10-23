class Dog < ApplicationRecord
# Un dog ne peut appartenir qu'a une ville
    belongs_to :city, optional: true

# dog peut avoir plusieurs dogsitter via les stroll
    has_many :strolls
    has_many :dog_sitters, through: :strolls
end
