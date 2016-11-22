class CreateLatoClientsClients < ActiveRecord::Migration[5.0]
  def change
    create_table :lato_clients_clients do |t|
      t.string :name

      t.string :phone_1
      t.string :phone_2
      t.string :phone_3
      t.string :phone_4

      t.string :email_1
      t.string :email_2
      t.string :email_3
      t.string :email_pec

      t.string :referent
      t.string :address
      t.string :city
      t.string :vat
      t.string :fiscal_code

      t.timestamps
    end
  end
end
