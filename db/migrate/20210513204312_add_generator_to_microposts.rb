class AddGeneratorToMicroposts < ActiveRecord::Migration[6.1]
  def change
    add_column :microposts, :generator, :string
  end
end
