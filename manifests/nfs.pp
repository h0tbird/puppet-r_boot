class r_boot::nfs inherits r_boot {

  if $nfs {
    class { '::nfs':
      ensure  => $nfs['ensure'],
      enable  => $nfs['enable'],
      version => $nfs['version'],
    }
  }
}
