class CreateSymptoms < ActiveRecord::Migr
  def change
    create_table :symptoms do |t|
      t.string :symptom_name
      t.references :user
      t.timestamps
    end
  end
end