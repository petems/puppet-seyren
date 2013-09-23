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

  exec { "start-seyren" :
    command   => '/usr/lib/jvm/java-7-openjdk-amd64/bin/java -jar seyren-web/target/dependency/jetty-runner.jar --path /seyren seyren-web/target/*.war',
  }

}
