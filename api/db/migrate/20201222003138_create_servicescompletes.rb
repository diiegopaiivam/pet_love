class CreateServicescompletes < ActiveRecord::Migration[6.1]
  def change
    create_table :servicescompletes do |t|
      t.date :date
      t.string :hour

      t.timestamps
    end
  end
end
