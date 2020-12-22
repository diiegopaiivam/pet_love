class AddUserToServicesCompletes < ActiveRecord::Migration[6.1]
  def change
    add_reference :servicescompletes, :user, foreign_key: true
  end
end
