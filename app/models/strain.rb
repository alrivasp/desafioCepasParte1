class Strain < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, presence: true

    has_many :wine_strains, dependent: :destroy
    has_many :wines, through: :wine_strains
end
