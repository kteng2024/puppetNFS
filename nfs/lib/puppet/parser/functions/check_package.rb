module Puppet::Parser::Functions
	newfunction(:check_package, :type => :rvalue) do |args|
		if `yum list installed | grep ^nfs | awk {'print $1'}`.empty?
			then
				nfs_state='nopackage'
			else
				nfs_state='installed'
			end
				return nfs_state 
			end
end

