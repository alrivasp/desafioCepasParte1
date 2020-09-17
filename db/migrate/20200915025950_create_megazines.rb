class CreateMegazines < ActiveRecord::Migration[5.2]
  def change
    create_table :megazines do |t|
      t.string :name

      t.timestamps
    end
  end
end
