# == Class: touchfile
class touchfile {
  file { '/var/tmp/test.txt':
    ensure  => file,
    mode    => '0777',
    content => "this is sample text",
  }
}
