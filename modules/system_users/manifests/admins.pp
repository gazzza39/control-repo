class system_users::admin {

  group { 'staff':
    ensure => present,
  }
  if $facts['kernel'] == 'windows' {
    user { 'admin':
      group => 'staff',
    }
  } else {
    package { 'csh':
      ensure => latest,
    }
    user { 'admin':
      groups   => 'staff',
      shell   => '/bin/csh',
      require => Package['csh'],
    }
  }
}
