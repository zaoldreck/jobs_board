class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.belongs_to :job, index: true
      t.belongs_to :resume, index: true
      t.string :status
      t.timestamps
    end
  end
end
