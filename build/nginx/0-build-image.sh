start=`date +%s`
logDate=$(date '+%Y-%m-%d')

if [ -f env ]; then
    # Load Environment Variables
    export $(cat env | grep -v '#' | sed 's/\r$//' | awk '/=/ {print $1}' )
fi

nerdctl -n k8s.io pull nginx:${NGINX_VERSION}

rm -f ./ca.pem

cp ../../../kube-vault-dockerhub/certs/ca/ca.pem ./ca.pem

nerdctl build \
   --no-cache \
   --file ./Dockerfile.quai \
   --build-arg NGINX_VERSION=${NGINX_VERSION} \
   --namespace k8s.io \
   -t l_nginx:latest .

end=`date +%s`

runtime=$((end-start))
runtimeh=$((runtime/60))
runtimes=$((runtime-runtimeh*60))

echo "$logDate - Total runtime was : $runtimeh minutes $runtimes seconds"
echo "" >> ./build.log
echo "$logDate - Total runtime was : $runtimeh minutes $runtimes seconds" >> ./build.log
echo ""
