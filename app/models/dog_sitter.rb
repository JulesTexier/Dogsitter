class DogSitter < ApplicationRecord
# Un promeneur ne peut appartenir qu'a une ville
    belongs_to :city, optional: true

# Un dogsitter peut promener plusieurs dog lors d'une stroll
    has_many :strolls
    has_many :dogs, through: :strolls
end
