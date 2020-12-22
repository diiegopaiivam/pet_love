class AddServicesToServicesCompletes < ActiveRecord::Migration[6.1]
  def change
    add_reference :servicescompletes, :services, foreign_key: true
  end
end
