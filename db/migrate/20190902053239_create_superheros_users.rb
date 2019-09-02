class CreateSuperherosUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :superheros_users, :id => false do |t|
      t.integer :superhero_id
      t.integer :user_id
    end
  end
end
