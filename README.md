This project was created as a proof of concept to show that without proper validation, XSS will happen!

ok

docker build --no-cache -t xss1:1 -f Dockerfile .
docker run -d -p 5006:80 xss1:1
