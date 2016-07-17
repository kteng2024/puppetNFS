class nfs::service {

      file {'/tmp/nfsdir/testdir':
		ensure => directory,
		require => File['/tmp/nfsdir'],
	}
	service { 'nfs':
		ensure => running,
	}



}
