class CreateCins < ActiveRecord::Migration[6.1]
  def change
    create_table :cins do |t|
      t.string :code
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
