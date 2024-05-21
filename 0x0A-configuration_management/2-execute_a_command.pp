<<<<<<< HEAD
# A manifest to kill a running process killmenow from the process table
# on every puppet run
exec { 'killing a process using pkill':
  command  => 'pkill -9 killmenow',
  path     => '/usr/bin:/bin',
  onlyif   => 'pgrep killmenow',
  provider => shell,

}

=======
# kill process killmenow

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}
>>>>>>> 73e795a1ce6157b8ab16a0a9c1d4fa756476b529
