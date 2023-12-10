resource "aws_key_pair" "default" {  
  key_name   = "fake-video-studio"  
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8XRtL1ZKLG7rY4RppbSImZzcKw/Ze+03K98+U+UsGh52Pg46vYicIeJdrNo9MiZv8KoklXBhZ1Iqvy5xdipXXHTBGoVz969LPT7r68DOa1V2D5/WMOBQpSpYWBQ9Bl1T1CG9gL6f8E+xC/mF7zIu9CFOeBPI8C9OxQdI1WVYbY7oXirj/ykYw4qx3+DtSu77FxBS9edBSawllgPcWL5RFYuFIUYGHN1gcigd07ue33zMsmU8EfT8swYroBHUmp7t63fsJ4ZyaqtqBRFAubA4NIDDq0KYkPuUpFN++D3zfAevinMFZ7dSoBRJqxOTpbgzFBy+A5VcviPS1uBQLWl8b+wmsP98fWqW72nAs1doL2k8j72XnM/lqlezE3fr6SCt3JAgQiAm0Zq6onHUh47WvUJIFbGRLjt9U9l1oEytbtiF6aG7bhxL9vaJRkMHkZKj+87imaovCRF9pFEp9Czuc7VVPboD+gzudq1AjII/kZZ8WICTBXqoe6+GRsj72w3zlxRApRom9IZO+q725qXSMLertGcYduS+HUQO2h/e+HWKQVrIOrZyVvUxEb5bOIaO0kv3wNrczuCpACBgxS7l85plVzVQxEWPa76SMbxLvvXB4gBmT8XfJ9vvr6eQ0qusNU2tMTiWEeZ1M/OYZr1/BhcreVSlgGWIUR3iEU9j82Q== root@ip-172-31-47-205.ec2.internal"  # paste public key attribute
  tags = {  
    "Name" = "georgecaca@gmail.com"  
  }  
}