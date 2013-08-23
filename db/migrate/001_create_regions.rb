class CreateRegions < ActiveRecord::Migration

  def change
    create_table :regions do |t|
      t.string :nom
    end
  end

end
