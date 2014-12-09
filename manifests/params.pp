# == Class: seyren::params
#
#  Checks dependancies for Seyren, currently only working on Ubuntu/Debian
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
# include seyren::params
#
# === Authors
#
# Peter Souter
#
# === Copyright
#
#
#
class seyren::params {
  case $::osfamily {
    debian, ubuntu: { }
    default: {
      case $::osfamily {
        default: {
          fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
        }
      }
    }
  }
}