class JobTitle < ApplicationRecord
    has_many :megazineoenologistjobtitles, dependent: :destroy
    has_many :megazines, through: :megazineoenologistjobtitles
    has_many :oenologists, through: :megazineoenologistjobtitles
end
