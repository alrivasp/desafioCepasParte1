class Megazineoenologistjobtitle < ApplicationRecord
  belongs_to :megazine
  belongs_to :oenologist
  belongs_to :job_title
end
