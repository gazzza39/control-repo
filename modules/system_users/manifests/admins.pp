Class system_users::admins {
 package { 'csh':
  ensure => latest,
}

 group { 'staff':
  ensure => present,
}

 user { 'admin':
  group => 'staff',
  shell => '/bin/csh',
  require => Package ['csh'],
 } 

}





