class nfs::file {

	file { '/tmp/nfsmodule':
		ensure => file,
		content => template('nfs/nfstemp.erb'),
	#	content => 'this is the last line of the file',
	}

	exec { '/tmp/nfsmodule1':
		command => '/bin/echo "this is the last line of the file" >> /tmp/nfsmodule',
		require => File['/tmp/nfsmodule'],
		}


}
