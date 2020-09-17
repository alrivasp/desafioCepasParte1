class Oenologist < ApplicationRecord
    has_and_belongs_to_many :wines, dependent: :destroy

    has_many :megazineoenologistjobtitles, dependent: :destroy
    has_many :megazines, through: :megazineoenologistjobtitles
    has_many :job_titles, through: :megazineoenologistjobtitles


    def set_references(arr_jobs)
        # {"1"=>["", "1", "2"], "2"=>[""], "3"=>["", "2", "3"]}
        self.megazineoenologistjobtitles.destroy_all
        arr_jobs = arr_jobs.reject { |m| m.empty? }

        arr_jobs.each do |m, jobs|
            jobs = jobs.reject { |j| j.empty? }
            
            jobs.each do |j|
                temp_moj = Megazineoenologistjobtitle.new
                temp_moj.megazine = Megazine.find(m.to_i)
                temp_moj.job_title = JobTitle.find(j.to_i)
                temp_moj.oenologist = self
                temp_moj.save
            end
        end

    end
end
