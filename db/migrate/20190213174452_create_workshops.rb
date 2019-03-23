class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.references :person, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
