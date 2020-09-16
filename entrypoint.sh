#!/bin/bash

source /etc/apache2/envvars
echo "<?php echo 'Hello world! Container running with custom router (internal). Documentroot mounted on cephfs volume.';" > /mnt/app/index.php
#tail -F /var/log/apache2/* &
exec apache2 -D FOREGROUND
