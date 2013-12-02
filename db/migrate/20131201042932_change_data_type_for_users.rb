class ChangeDataTypeForUsers < ActiveRecord::Migration
   def up
	    change_table :users do |t|
	      t.change :facebook_token, :string
	      t.change :facebook_id, :string
	      t.change :about, :string
	    end
	  end

	def down
	    change_table :users do |t|
	      t.change :facebook_token, :text, :limit => 512
	      t.change :facebook_id, :text, :limit => 32
	      t.change :about, :string, :limit => 1024
	    end
	end
end
