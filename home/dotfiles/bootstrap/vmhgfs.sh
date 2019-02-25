#!/bin/bash
echo '.host:/ /mnt/hgfs fuse.vmhgfs-fuse allow_other,uid=1000,gid=1000,rw 0 0' | sudo tee -a /etc/fstab
