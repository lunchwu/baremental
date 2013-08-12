class AddRecnameToCpuEater < ActiveRecord::Migration
  def self.up
    add_column :cpu_eaters, :recname, :string
  end

  def self.down
    remove_column :cpu_eaters, :recname
  end
end
