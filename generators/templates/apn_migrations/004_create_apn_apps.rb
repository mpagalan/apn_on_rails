class CreateApnApps < ActiveRecord::Migration # :nodoc:
  def self.up
    create_table :apn_apps do |t|
      t.text   :apn_dev_cert
      t.text   :apn_prod_cert
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :apn_apps
  end
end
