class Stroll < ApplicationRecord
#table de jointure
    belongs_to :dog
    belongs_to :dog_sitter
end
