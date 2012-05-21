name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[apt]",
  "recipe[nagios::client]",
  "recipe[chef-client::delete_validation]",
  "recipe[motd-tail]",
  "recipe[sudo]",
  "recipe[ntp]",
  "recipe[resolver]",
  "recipe[postfix::client]",
  "recipe[users::sysadmins]"
)

default_attributes(
  "nagios" => {
    "server_role" => "monitoring"
  },
  "authorization" => {
    "sudo" => {
      "users" => ["ubuntu", "zpatten"],
      "groups" => ["admin","sudo"],
      "passwordless" => true
    }
  },
  "resolver" => {
    "nameservers" => ["8.8.8.8","8.8.4.4"],
    "search" => "example.com"
  },
  "postfix" => {
    "relayhost_role" => "monitoring"
  }
)
