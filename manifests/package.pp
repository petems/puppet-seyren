# == Class: seyren::package
#
#  Configures Seyren 
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
class seyren::package {

  #Requirements...
  package{ [
    'git',
    'curl',
    'maven',
    'openjdk-7-jdk',
    ] :
    ensure  => latest,
  }

  exec { "download-seyren-from-git" :
    command   => 'git clone https://github.com/scobal/seyren /opt/seyren',
    creates   => '/opt/seyren',
  }

  exec { "build-seyren-with-maven" :
    command   => 'mvn clean package',
    creates   => '/opt/seyren/seyren-web/',
    require   => Exec['download-seyren-from-git']
  }

}
