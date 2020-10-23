class City < ApplicationRecord
# Chaque ville contient plusieurs promeneurs et plusieurs chiens
    has_many :dog_sitters
    has_many :dogs
end
