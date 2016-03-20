echo "========================================================================"
echo " You can now connect to this ShadowsocksR server:"
echo " server: $SSR_SERVER_ADDR  port: $SSR_SERVER_PORT password: $SSR_PASSWORD  "
echo " timeout: $SSR_TIMEOUT  encryption method: $SSR_METHOD "
echo " protocol: $SSR_PROTOCOL  obfs: $SSR_OBFS "
echo " Please remember the password!"
echo "========================================================================"

python ~/shadowsocks/shadowsocks/server.py -s $SSR_SERVER_ADDR -p $SSR_SERVER_PORT -k $SSR_PASSWORD -m $SSR_METHOD -t $SSR_TIMEOUT -P $SSR_PROTOCOL -o $SSR_OBFS
