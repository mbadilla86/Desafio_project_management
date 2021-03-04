class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :started_at
      t.date :ended_at
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
