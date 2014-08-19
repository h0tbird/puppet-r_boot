class r_boot::dnsmasq inherits r_boot {

  if $dnsmasq {
    class { 'dnsmasq':
      ensure        => $dnsmasq['ensure'],
      enable        => $dnsmasq['enable'],
      version       => $dnsmasq['version'],
      effective_uid => $dnsmasq['effective_uid'],
      effective_gid => $dnsmasq['effective_gid'],
      dhcp_range    => $dnsmasq['dhcp_range'],
      log_queries   => $dnsmasq['log_queries'],
      log_dhcp      => $dnsmasq['log_dhcp'],
      enable_tftp   => $dnsmasq['enable_tftp'],
      tftp_root     => $dnsmasq['tftp_root'],
      dhcp_boot     => $dnsmasq['dhcp_boot'],
    }
  }
}
