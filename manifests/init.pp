class r_boot (

  $pxelinux = undef,
  $dnsmasq  = undef,

) {

  contain "${module_name}::pxelinux"
  contain "${module_name}::dnsmasq"
}
