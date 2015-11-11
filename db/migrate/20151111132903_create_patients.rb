class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :date_birth
      t.string :country
      t.string :city
      t.string :street
      t.string :title
      t.string :color
      t.string :url
      t.string :blog
      t.integer :height
      t.integer :weight
      t.string :email
      t.integer :frequence
      t.integer :money
      t.string :phone

      t.timestamps
    end
  end
end
