#!/usr/bin/env bash

sudo tee /etc/supervisor/conf.d/frp.conf <<EOF

[program:frp]
user=yang
command=/etc/frp/frpc -c /etc/frp/frpc.ini
process_name=%(program_name)s
autostart=True
autorestart=True
startsecs=30
startretries=5
exitcodes=0,2
stopsignal=TERM
stopwaitsecs=30
redirect_stderr=True
stdout_logfile_maxbytes = 20MB
stdout_logfile_backups = 10
stdout_logfile = /var/log/frp/stdout.log

EOF
