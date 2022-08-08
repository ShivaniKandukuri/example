class AddEmployeeReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :devices, :employee, foreign_key: true
  end
end
