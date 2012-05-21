current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chefconf2012-61"
client_key               "#{current_dir}/chefconf2012-61.pem"
validation_client_name   "chefconf2012-61-validator"
validation_key           "#{current_dir}/chefconf2012-61-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/chefconf2012-61"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:flavor] = 'm1.small'
knife[:image] = 'ami-3c994355'
knife[:distro] = 'chef-full'
