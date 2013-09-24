# == Class: seyren::package
#
#  Configures Seyren package 
#
# === Parameters
#
#
#
# === Variables
#
#
# === Examples
#
# include seyren
#
# === Authors
#
# Peter Souter 
#
# === Copyright
#
# 
#
class seyren::service {

  file { '/etc/init/seyren.conf' :
    ensure  => present,
    content => template('seyren/etc/init/seyren_upstart.conf.erb'),
  }

}
