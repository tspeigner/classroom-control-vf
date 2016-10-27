#creating a defined resource type.

define users::managed_user {
  user { $title:
    ensure      => present,
    managehome  => true,
    group       => $title,
   }
   
   group { $title:
    ensure  => present,
   }
   
   file { "/home/${title}":
    ensure    => 'directory',
    mode      => '0755',
    owner     => $title,
   }
   
   file { "/home/${title}/.ssh":
    ensure    => file,
    mode      => '0700',
    owner     => $title,
   }
   
   file { "/home/${title}/.bashrc":
    ensure  => file,
    mode    => '0644',
    owner   => $title,
    source  => 'puppet:///modules/users/bashrc',
   }
}
