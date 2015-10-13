class CreateAcceptableIncompletes < ActiveRecord::Migration
  def change
    create_table :acceptable_incompletes do |t|
      t.references :offer, index: true, foreign_key: true
      t.references :tradeable_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
