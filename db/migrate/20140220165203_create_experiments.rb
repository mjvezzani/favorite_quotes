class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :name
      t.time :increasing_time

      t.timestamps
    end
  end
end
