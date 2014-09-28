class r_boot::nfs inherits r_boot {

  if $nfs {

    class { '::nfs':
      ensure  => $nfs['ensure'],
      enable  => $nfs['enable'],
      version => $nfs['version'],
    }

    file { '/etc/exports':
      ensure  => present,
      content => '/kickstart *(ro)',
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      notify  => Service['nfs-server'],
    }
  }
}
