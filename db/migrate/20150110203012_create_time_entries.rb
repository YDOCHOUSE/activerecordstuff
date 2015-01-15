class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.float :time_worked
      t.belongs_to :customer
      t.belongs_to :employee
      t.timestamps
    end
  end
end
