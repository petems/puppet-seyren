# == Class: seyren::config
#
#  Configuration of seyren
#
# === Parameters
#
#
# === Variables
#
#
# === Examples
#
# include seyren::config
#
# === Authors
#
# Peter Souter
#
# === Copyright
#
#
class seyren::config  {

  file {'/opt/seyren' :
    ensure => directory,
    mode   => '0740',
    owner  => 'root',
    group  => 'root',
  }

  file{ '/opt/seyren/seyren_config.sh' :
    ensure  =>  present,
    mode    => '0740',
    owner   => 'root',
    group   => 'root',
    content =>  template('seyren/etc/seyren/seyren_config.sh.erb'),
    replace =>  true,
    require =>  File['/opt/seyren'],
  }

}
