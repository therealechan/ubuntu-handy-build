sudo apt-get install shadowsocks-libev

{
    "server": "server addr",
    "server_port": port,
    "local_address": "127.0.0.1",
    "local_port": 1080,
    "password": "passwd",
    "method": "rc4-md5",
    "fast_open": true,
    "workers": 1
}


export http_proxy=http://0.0.0.0:1314;export https_proxy=http://0.0.0.0:1314;


[program:netdata] ; 程序名称，在 supervisorctl 中通过这个值来对程序进行一系列的操作
user=docker
command=docker run -p 7010:19999 --rm --cap-add SYS_PTRACE -v /proc:/host/proc:ro -v /sys:/host/sys:ro -v /var/run/docker.sock:/var/run/docker.sock titpetric/netdata:1.10 ; 启动命令，与手动在命令行启动的命令是一样的
process_name=%(program_name)s
autostart=True        ; 在 supervisord 启动的时候也自动启动
autorestart=True      ; 程序异常退出后自动重启
startsecs=30
startretries=5
exitcodes=0,2
stopsignal=TERM
stopwaitsecs=30
redirect_stderr=True ; 把 stderr 重定向到 stdout，默认 false
;日志文件，需要注意当指定目录不存在时无法正常启动，所以需要手动创建目录（supervisord 会自动创建日志文件）
stdout_logfile_maxbytes = 20MB  ; stdout 日志文件大小
stdout_logfile_backups = 10     ; stdout 日志文件备份数
stdout_logfile = /home/david/frp/logs/stdout.log


[program:frp] ; 程序名称，在 supervisorctl 中通过这个值来对程序进行一系列的操作
user=develop
command=/home/david/frp/frpc -c /home/david/frp/frpc.ini  ; 启动命令，与手动在命令行启动的命令是一样的
process_name=%(program_name)s
autostart=True        ; 在 supervisord 启动的时候也自动启动
autorestart=True      ; 程序异常退出后自动重启
startsecs=30
startretries=5
exitcodes=0,2
stopsignal=TERM
stopwaitsecs=30
redirect_stderr=True  ; 把 stderr 重定向到 stdout，默认 false
;日志文件，需要注意当指定目录不存在时无法正常启动，所以需要手动创建目录（supervisord 会自动创建日志文件）
stdout_logfile_maxbytes = 20MB  ; stdout 日志文件大小
stdout_logfile_backups = 10     ; stdout 日志文件备份数
stdout_logfile = /home/david/frp/logs/stdout.log



sudo apt-get install -y polipo
systemctl enable polipo.service

```
proxyAddress = "127.0.0.1"
proxyPort = 7050
socksParentProxy = "127.0.0.1:1080"
socksProxyType = socks5
```



```
set-git-proxy()
{
    git config --global http.proxy \\
        'http://127.0.0.1:7030'
    git config --global https.proxy \\
        'http://127.0.0.1:7030'
}
set-curl-proxy()
{
    echo 'proxy = "http://127.0.0.1:10400"' > ~/.curlrc
}
set-global-proxy()
{
    export http_proxy="http://127.0.0.1:7040"
    export https_proxy="http://127.0.0.1:7040"
}
unset-git-proxy()
{
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    sed -i -e '/\[http\]/d;/\[https\]/d' ~/.gitconfig
}
unset-curl-proxy()
{
    echo "" > ~/.curlrc
}
unset-global-proxy()
{
    export http_proxy=""
    export https_proxy=""
}
```
