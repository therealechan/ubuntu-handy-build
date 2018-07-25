set-git-proxy()
{
    git config --global http.proxy \\
        'http://127.0.0.1:7050'
    git config --global https.proxy \\
        'http://127.0.0.1:7050'
}
set-curl-proxy()
{
    echo 'proxy = "http://127.0.0.1:7050"' > ~/.curlrc
}
set-global-proxy()
{
    export http_proxy="http://127.0.0.1:7050"
    export https_proxy="http://127.0.0.1:7050"
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
