class CreateGodzillas < ActiveRecord::Migration
  def change
    create_table :godzillas do |t|
      t.integer :teeth
      t.float :breath_temperature
      t.decimal :eyes
      t.text :life_story
      t.string :arch_rival

      t.timestamps
    end
  end
end
