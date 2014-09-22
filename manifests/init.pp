class r_boot (

  $pxelinux = undef,
  $dnsmasq  = undef,

) {

  contain "${module_name}::pxelinux"
  contain "${module_name}::dnsmasq"
  contain "${module_name}::images"
  contain "${module_name}::kickstart"
}
