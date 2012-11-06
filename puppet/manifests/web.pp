package { 'vim':
  ensure => installed
}

file { '/etc/motd':
  content => "Welcome to your event.ly box, provisioned by Puppet via web.pp.\n"
}
