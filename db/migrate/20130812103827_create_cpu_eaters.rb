class CreateCpuEaters < ActiveRecord::Migration
  def self.up
    create_table :cpu_eaters do |t|
      t.integer :pclk, :default => 0
      t.integer :dclk, :default => 0
      t.integer :aclk, :default => 0
      t.decimal :m2_vmain, :default => 0
      t.decimal :c2_m0_vmain, :default => 0
      t.decimal :one_core, :default => 0
      t.decimal :dual_core, :default => 0
      t.decimal :tri_core, :default => 0
      t.decimal :four_core, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :cpu_eaters
  end
end
