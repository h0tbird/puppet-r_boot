class r_boot::nfs inherits r_boot {

  if $nfs {
    # class { '::nfs':
    #   foo => $nfs[''],
    # }
  }
}
