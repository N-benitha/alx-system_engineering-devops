#kills a process named killmenow
exec {'pkill -f killmenow':
command => '/usr/bin/pkill -f killmenow',
path    => '/usr/bin/:/usr/local/bin/:/bin/',
onlyif  => '/usr/bin/pgrep -f killmenow',
}
