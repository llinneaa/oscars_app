class CreateNominees < ActiveRecord::Migration[7.1]
  def change
    create_table :nominees do |t|
      t.string :name

      t.timestamps
    end
  end
end
