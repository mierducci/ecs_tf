resource "aws_key_pair" "default" {  
  key_name   = "fake-video-studio"  
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCjeoQRNeaJgvCgTWS7viqfShamsK3xNi6tjBCm2AamaT0/9el57VvXwglgxPXmFSy74xu3eUiCGrZCzW4UKbutTcSD2R2NhpEjX9OPdqRgFSPU970La1W/BwQcmdDVC88xmbZH7DPpTB4zI2p2lHNPvnu0gAsRmmZmHIDXo07w+5Vo32eif5xC8cD4P85r/4PUamKb1yEw6MyB5lwLLMs2BPRUnLUVNirQ29LnZTzSr8wHPRJQvy8Qj4YtVyfw1MhCIkJXQjKyYNAm1z/aLmhbJSt629/Zvdwls9UpSSxqzd9tqbkJNDZm4G65oKEKhQY4tjxKF6sST5kSWcs+Yfzk8q/W1SC8PwSpA1q6oU+/ZEp4FS9db31lw0RSgELNVyw2LbnF9lY2Kdb9oyymsSTgxM6cjFVftL6L3Ntx08R/qRApjeNgIovgqvJOxcwzYu+vVS/cvY/OOfDECvfBJWML+cxpl4EqOnDRYIjY9AO4ZH70Za6M+D1570qPn0zYnLn9ibJttG39XeS+KEtK6ss1A4O7Cg0rHGYeN3zwdcIXrKBJ2dUynDHGfMMOxWKWmxszbfzzSDTDpdb1R4HQ3z1cb9giH3rBGmragPnqq/ibX8zPmA13N/rFzPr1sDAM4d57g233y3Pq2fD7cYFDjjg7q3Aiv7gmP6vU9bMrqvcu1Q== root@ip-172-31-88-72.ec2.internal"  # paste public key attribute
  tags = {  
    "Name" = "georgecaca@gmail.com"  
  }  
}