# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "robertgreiner"
client_key               "#{current_dir}/robertgreiner.pem"
validation_client_name   "robertgreiner-validator"
validation_key           "#{current_dir}/robertgreiner-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/robertgreiner"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
