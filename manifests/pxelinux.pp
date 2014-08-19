class r_boot::pxelinux inherits r_boot {

  if $pxelinux {
    class { 'pxelinux':
      version => $pxelinux['version'],
    }
  }
}
