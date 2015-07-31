class CreateUsers < ActiveRecord::Migration
  	def up
    	create_table :users do |t|
    
    	# Column types string, binary, boolean,
    	# data, datetime, decimal, float, integer,
    	# text, time
    
    	# Options
    	# :default => value
    	# :limit => size
    	# :null => true / false
    	# Decimals
    	# :precision => value
    	# :scale => value
    
    	t.string "email", :limit => 50, :null => false
      	t.column "password", :string, :limit => 30, :null => false
      	t.datetime "created_at"
      	t.datetime "updated_at"
      
# Tracks creation and updates      
t.timestamps
# Rails automatically creates an auto
# incrementing id for each record
    	end
  	end
  
  	def down
  	drop_table :users
  	end
end
