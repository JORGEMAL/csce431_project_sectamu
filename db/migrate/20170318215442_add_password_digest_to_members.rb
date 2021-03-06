class AddPasswordDigestToMembers < ActiveRecord::Migration
  
  def up
    remove_column "members", "password"
    add_column "members", "password_digest", :string
  end
  
  def down
    remove_column "members", "password_digest"
    add_column "members", "password", :string, :limit => 40, :null => false
  end
  
end
