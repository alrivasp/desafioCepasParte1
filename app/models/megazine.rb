class Megazine < ApplicationRecord
    has_many :megazineoenologistjobtitles, dependent: :destroy
    has_many :job_titles, through: :megazineoenologistjobtitles
    has_many :oenologists, through: :megazineoenologistjobtitles
end
