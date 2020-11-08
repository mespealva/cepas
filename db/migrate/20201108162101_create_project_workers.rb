class CreateProjectWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :project_workers do |t|
      t.references :project, foreign_key: true
      t.references :worker, foreign_key: true

      t.timestamps
    end
  end
end
