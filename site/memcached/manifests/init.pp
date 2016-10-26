#memcached/manifests/init.pp

class memcached {
  package { 'memcached':
    ensure  => present,
    before  => File['/etc/sysconfig/memcached'],
  }

  file { '/etc/sysconfig/memcached':
   ensure  => 'file',
   group   => 'root',
   mode    => '0644',
   owner   => 'root',
   source  => "puppet:///modules/memcached/memcached",
   require => Package['memcached'],
  }
 
  service { 'memcached':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/sysconfig/memcached'],
  }
}
