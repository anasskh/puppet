node 'trilogy.no-ip.info'
{
file {'/tmp/dns':    # resource type file and filename
    ensure => present, # make sure it exists
    mode => '0644',
    content => "Only DNS servers get this file.\n",
  }
include ssh 

}
