# fail2ban::params
#
# @summary Default values for params of the main class
#
class fail2ban::params {

  case $facts['os']['family'] {
    'Debian': {
      $jail_conf_template = "${module_name}/debian/jail.conf.erb"
    }
    'RedHat': {
      $jail_conf_template = "${module_name}/rhel/jail.conf.erb"
    }
    default: { fail("Unsupported Operating System family: ${facts['os']['family']}") }
  }

}
