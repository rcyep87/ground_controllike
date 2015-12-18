class AddThrowsAttrToPlayerTable < ActiveRecord::Migration
  def change
    add_column(:players, :throws, :string)
  end
end
