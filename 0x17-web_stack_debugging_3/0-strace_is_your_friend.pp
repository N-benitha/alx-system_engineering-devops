# Fixes Apache 500 error, fix bad "phpp" extensions to "php" in "wp-settings.php"

exec{'fix-wordpress':
command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
path    => ['/usr/local/bin/', '/bin/'],
onlyif  => 'grep -q phpp /var/www/html/wp-settings.php',
}
