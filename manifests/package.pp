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

  vcsrepo { "/opt/seyren":
    ensure   => present,
    provider => git,
    source   => 'https://github.com/scobal/seyren',
    revision => 'c29cb041197e1441f2ed192b677d5442d97d8195'
  }

  exec { 'build-seyren-with-maven' :
    command   => 'mvn clean package',
    cwd       => '/opt/seyren',
    require   =>  [
                    Vcsrepo['/opt/seyren'],
                    Package['maven']
                   ],
  }

}
