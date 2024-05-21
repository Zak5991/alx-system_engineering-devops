<<<<<<< HEAD
# A puppet manifest installing flask v2.1.0 which is a package from pip3.
# Am also specifying the version of flask to install using the ensure attribute
package { 'flask:'
  ensure   => '2.1.0',
  provider => pip3,
}

=======
#!/usr/bin/pup
# Install an especific version of flask (2.1.0)
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
>>>>>>> 73e795a1ce6157b8ab16a0a9c1d4fa756476b529
