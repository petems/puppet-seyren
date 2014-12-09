# == Class: seyren
#
#  Installs and configures Seyren (see https://github.com/scobal/seyren)
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
class seyren {

  Exec {
    path => '/usr/bin:/bin',
  }

  include seyren::params, seyren::package, seyren::config, seyren::service

  Class['seyren::package'] -> Class['seyren::config'] ~> Class['seyren::service']

}
