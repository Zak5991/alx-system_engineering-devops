# cerates a file
file { '/tmp/school':
	mode	=> '0744'
	owner	=> 'www-data',
	groupe	=> 'www-data',
	content	=> 'I love Puppet'
}
