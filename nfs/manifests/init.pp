class nfs {


$pack_instal=check_package()
notice("the package is  $pack_instal")

 package { 'nfs-utils':
		
	ensure => installed,
		before => Service['nfs'],
	}
	
	file { '/tmp/nfsdir':
		ensure => directory,
		}
		class {'nfs::file':} ->
		class {'nfs::service':} 
}
