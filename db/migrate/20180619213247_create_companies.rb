class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :amount
      t.string :financing_type
      t.string :financing_time
      t.string :company_name
      t.string :company_phone
      t.string :trade_name
      t.string :company_address
      t.string :company_suite
      t.string :company_city
      t.string :company_state
      t.string :company_zip
      t.string :tax_id
      t.string :entity_type
      t.string :annual_revenue
      t.string :sell_to
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
