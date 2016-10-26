#new skeleton class
class skeleton {
  file { '/etc/skel/':
  ensure => 'directory',
  group  => 'root',
  mode   => '0755',
  owner  => 'root',
  }

  file { '/etc/skel/.bashrc':
  ensure  => 'file',
  group   => 'root',
  mode    => '0644',
  owner   => 'root',
  }

}
