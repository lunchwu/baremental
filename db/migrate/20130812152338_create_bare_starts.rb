class CreateBareStarts < ActiveRecord::Migration
  def self.up
    create_table :bare_starts do |t|
      t.string :rev_date
      t.text :rev_note
      t.string :author

      t.timestamps
    end
  end

  def self.down
    drop_table :bare_starts
  end
end
