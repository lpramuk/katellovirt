class katellovirt::firewall::provisioning {
  firewall { '100 accept http/https':
    dport  => [80, 443],
    proto  => tcp,
    action => accept,
  }

  firewall { '105 accept foreman proxy':
    dport  => 9090,
    proto  => tcp,
    action => accept,
  }

  firewall { '110 accept puppet':
    dport  => 8140,
    proto  => tcp,
    action => accept,
  }

  firewall { '120 accept DHCP':
    dport  => [67, 68],
    proto  => udp,
    action => accept,
  }

  firewall { '125 accept TFTP':
    dport  => 69,
    proto  => udp,
    action => accept,
  }

  firewall { '130 accept DNS TCP':
    dport  => 53,
    proto  => tcp,
    action => accept,
  }

  firewall { '131 accept DNS UDP':
    dport  => 53,
    proto  => udp,
    action => accept,
  }

  firewall { '140 accept libvirt TCP':
    dport  => 16509,
    proto  => tcp,
    action => accept,
  }

  firewall { '150 accept libvirt VNC':
    dport  => '5910-5919',
    proto  => tcp,
    action => accept,
  }

  firewall { '151 accept websocket VNC':
    dport  => '5900-5909',
    proto  => tcp,
    action => accept,
  }
}
