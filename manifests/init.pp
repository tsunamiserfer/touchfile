# == Class: touchfile
class touchfile {
case $kernel {
  'windows': {
    $filepath  = 'c:\temp\test.txt'
    }
  'linux': {
    $filepath  = '/var/tmp/text.txt'
    }
  }
    
  file {'$filepath':
    ensure  => file,
    mode    => '0777',
    content => "this is sample text",
  }
}
