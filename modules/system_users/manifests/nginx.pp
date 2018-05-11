class system_users::nginx {

  package { 'nginx':
    ensure => 'installed',
  }

}
