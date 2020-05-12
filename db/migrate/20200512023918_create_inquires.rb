class CreateInquires < ActiveRecord::Migration[5.2]
  def change
    create_table :inquires do |t|
      t.string :name
      t.string :email
      t.string :msg

      t.timestamps
    end
  end
end
