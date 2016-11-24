class CreateParticipates < ActiveRecord::Migration[5.0]
  def change
    create_table :participates do |t|
      t.belongs_to :event, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
