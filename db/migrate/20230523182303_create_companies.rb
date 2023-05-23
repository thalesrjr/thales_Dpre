class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
