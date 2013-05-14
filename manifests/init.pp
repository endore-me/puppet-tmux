# == Class: tmux
#
# === Examples
#
# class { 'tmux': }
#
# or
#
# include tmux
#
class tmux {
  package { 'tmux':
    ensure => present,
  }
  file { '/etc/tmux.conf':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/tmux/tmux.conf'
  }
}
