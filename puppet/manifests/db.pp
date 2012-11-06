include postgresql::server

# postgresql::database_user { 'db':
#   password_hash => postgresql_password('db', 'monkey')
# }

package { 'vim':
  ensure => installed
}

file { '/etc/motd':
  content => "Welcome to your event.ly box, provisioned by Puppet via web.pp.\n"
}
