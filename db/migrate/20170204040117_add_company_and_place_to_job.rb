class AddCompanyAndPlaceToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :company_name, :string
    add_column :jobs, :place, :string
  end
end
