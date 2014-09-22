class r_boot::kickstart inherits r_boot {

  file {

    '/kickstart':
      ensure  => directory,
      owner   => 'root',
      group   => 'root',
      mode    => '0755';

    '/kickstart/kvm.ks':
      ensure  => present,
      content => template("${module_name}/kvm.ks.erb"),
      owner   => 'root',
      group   => 'root',
      mode    => '0644';
  }
}
