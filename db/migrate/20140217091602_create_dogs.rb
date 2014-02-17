class CreateDogs < ActiveRecord::Migration
  def change
    enable_extension "hstore"
    create_table :dogs do |t|
      t.string :name
      t.hstore :properties

      t.timestamps
    end
  end
end
