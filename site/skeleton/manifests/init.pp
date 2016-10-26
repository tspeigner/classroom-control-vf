#new skeleton class
class skeleton {
  file { '/etc/skel/.bashrc':
  ensure  => file,
  source  => "puppet:///modules/skeleton/bashrc",
 }
}
