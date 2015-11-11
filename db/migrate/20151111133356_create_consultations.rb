class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :name
      t.string :pain_site
      t.string :pain_note
      t.integer :age
      t.string :location
      t.string :examination_notes
      t.date :date
      t.references :patient, index: true, foreign_key: true

      t.timestamps
    end
  end
end
