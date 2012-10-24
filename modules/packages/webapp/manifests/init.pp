class webapp(
		$mysqlRootPassword = 'root',
	) {
	include base
	include httpd
	class { 'mysql': }
	class { 'mysql::server':
	  config_hash => { 'root_password' => $mysqlRootPassword }
	}
}