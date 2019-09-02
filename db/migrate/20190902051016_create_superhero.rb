class CreateSuperhero < ActiveRecord::Migration[5.2]
  def change
    create_table :superheros do |t|
      t.text :name
      t.text :secret_identity
      t.text :publisher
      t.text :superpowers
      t.text :image
    end
  end
end
