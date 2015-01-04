class r_boot (

  $dnsmasq = undef,
  $nfs     = undef,

) {

  contain "${module_name}::dnsmasq"
  contain "${module_name}::nfs"
}
