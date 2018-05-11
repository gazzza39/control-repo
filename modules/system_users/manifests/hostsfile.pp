class host_entries {

  # create a simple hostname and ip host entry
  host { 'testing.puppetlabs.vm':
    ip => '127.0.0.1',
  }

}
