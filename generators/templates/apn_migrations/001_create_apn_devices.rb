class CreateApnDevices < ActiveRecord::Migration # :nodoc:
  def self.up
    create_table :apn_devices do |t|
      t.text     :token, :size => 100, :null => false
      t.integer  :app_id
      t.datetime :last_registered_at

      t.timestamps
    end
    add_index :apn_devices, :token
  end

  def self.down
    drop_table :apn_devices
  end
end
