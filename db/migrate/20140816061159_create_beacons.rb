class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :name
      t.string :description
      t.string :uuid
      t.integer :major
      t.integer :minor
      t.float :lat
      t.float :lng
      t.string :address
      t.string :link

      t.timestamps
    end
  end
end
