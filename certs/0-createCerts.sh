# generate CSR and KEY file
openssl req -out server.csr -newkey rsa:2048 -nodes -keyout server.key -config san.cnf

# Create a self-signed certificate from a SAN/UCC certificate request
openssl x509 -req -in ./server.csr -extfile ./san.cnf -extensions req_ext -signkey ./server.key -days 730 -out server.crt

rm -f *.csr
