class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :template
      t.json :collection

      t.timestamps null: false
    end
  end
end
