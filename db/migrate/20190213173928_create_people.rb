class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :lastname
      t.string :job_title
      t.string :department

      t.timestamps
    end
  end
end
