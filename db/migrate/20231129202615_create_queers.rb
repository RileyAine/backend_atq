class CreateQueers < ActiveRecord::Migration[7.1]
  def change
    create_table :queers, id: :uuid do |t|
      t.string :name
      t.string :gender_identity
      t.string :sexual_orientation
      t.string :pronouns

      t.timestamps
    end
  end
end
