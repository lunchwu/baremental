class CreateCodaDros < ActiveRecord::Migration
  def self.up
    create_table :coda_dros do |t|
      t.integer :chip_dro
      t.integer :cpu_freq
      t.decimal :vmain_volt
      t.integer :fclk
      t.integer :aclk
      t.decimal :vmain_avg
      t.decimal :vmain_peak

      t.timestamps
    end
  end

  def self.down
    drop_table :coda_dros
  end
end
