class r_boot::images inherits r_boot {

  $dirs = [ '/tftpboot/images',
            '/tftpboot/images/centos',
            '/tftpboot/images/centos/7',
            '/tftpboot/images/centos/7/x86_64/' ]

  file { $dirs:
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    require => Package['syslinux-tftpboot'],
  }

  file {

    '/tftpboot/images/centos/7/x86_64/vmlinuz':
      ensure => present,
      source => "puppet:///modules/${module_name}/centos/7/x86_64/vmlinuz",
      owner  => 'root',
      group  => 'root',
      mode   => '0644';

    '/tftpboot/images/centos/7/x86_64/initrd.img':
      ensure => present,
      source => "puppet:///modules/${module_name}/centos/7/x86_64/initrd.img",
      owner  => 'root',
      group  => 'root',
      mode   => '0644';

    '/tftpboot/images/centos/7/x86_64/forcedeth.img':
      ensure => present,
      source => "puppet:///modules/${module_name}/centos/7/x86_64/forcedeth.img",
      owner  => 'root',
      group  => 'root',
      mode   => '0644';
  }
}
