class UpdateContactColumn < ActiveRecord::Migration
  def change
  	rename_column :profiles, :contact_number, :contact_email
  end
end
