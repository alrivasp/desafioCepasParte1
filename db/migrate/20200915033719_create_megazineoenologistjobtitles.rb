class CreateMegazineoenologistjobtitles < ActiveRecord::Migration[5.2]
  def change
    create_table :megazineoenologistjobtitles do |t|
      t.references :megazine, foreign_key: true
      t.references :oenologist, foreign_key: true
      t.references :job_title, foreign_key: true

      t.timestamps
    end
  end
end
