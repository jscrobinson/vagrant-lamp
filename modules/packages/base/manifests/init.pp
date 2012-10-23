class base() {
	$epelrelease = 'http://mirrors.coreix.net/fedora-epel/6/i386/epel-release-6-7.noarch.rpm'
	$packages = ['sed','vim-enhanced','strace','subversion','git','nc']
	
	package {'epel-release':
      ensure   => installed,
      provider => rpm,
      source   => $epelrelease,
    }

	package { $packages:
      ensure  => installed,
      require => [ Package['epel-release'] ]
    }
}