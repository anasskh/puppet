class sshd {

package { 'openssh-server':
    name    => $apachename,
    ensure  => present,
  }


#         file { '/etc/ssh/sshd_config':
#                content => template(“sshd/sshd_config”),
#                require => Package["openssh-server"],
#                notify => Service["ssh"],
#        }
#
#        service { 'ssh':
#                ensure => ‘running’,
#                enable => ‘true’,
#                require => Package["openssh-server"],
#
#                hasstatus => ‘false’,
#                status => “/etc/init.d/ssh status|grep running”,
#}

file { '/etc/ssh/sshd_config':
  ensure   => file,
  mode     => '0600',
  owner    => 'root',
  group    => 'root',
  content => template('sshd/sshd_config.erb'),
}

}
