#openssl genrsa -des3 -out ca.key 2048
#openssl req -x509 -new -nodes -key ca.key -sha256 -days 1825 -out ca.pem
openssl genrsa -out app.key 2048
openssl req -new -key app.key -out app.csr
openssl x509 -req -in app.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out app.crt -days 825 -sha256 -extfile server.ext
openssl pkcs12 -export -out app.p12 -in app.crt -inkey app.key