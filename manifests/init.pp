class r_boot (

  $pxelinux = undef,
  $dnsmasq  = undef,
  $nfs      = undef,

) {

  contain "${module_name}::pxelinux"
  contain "${module_name}::dnsmasq"
  contain "${module_name}::nfs"
  contain "${module_name}::images"
}
