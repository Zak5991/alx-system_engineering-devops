<<<<<<< HEAD
# A puppet manifest that creates a file school in /tmp.
# The file (School) has permissions 0744, belonging to the user and group
# www-data.
file { '/tmp/school':
  ensure  => present,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}

=======
# creates a file in /tmp

file { '/tmp/school':
  content =>'I love Puppet',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
}
>>>>>>> 73e795a1ce6157b8ab16a0a9c1d4fa756476b529
