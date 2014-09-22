class r_boot::nfs inherits r_boot {

  if $nfs {
    notify { 'NFS to do ...': }
    # class { '::nfs':
    #   foo => $nfs[''],
    # }
  }
}
