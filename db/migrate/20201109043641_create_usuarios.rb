class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios, force: :cascade do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :status

      t.timestamps
    end
  end
end
