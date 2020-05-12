class CreateInquires < ActiveRecord::Migration[5.2]
  def change
    create_table :inquires do |t|

      t.timestamps
    end
  end
end
