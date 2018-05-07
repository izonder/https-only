# https-only

Docker image for Nginx-based redirector to HTTPS only with permanent HTTP code `301`

Just configure proxying all plain-HTTP requests to the container and it manages.

## How to

Just run it:
```bash
docker run -p 80:80 izonder/https-only
```

Then test it:
```bash
curl -v http://myhost.tld #specify your host
```

You should receive something like this:
```
> GET / HTTP/1.1
> Host: google.com
> User-Agent: curl/7.47.0
> Accept: */*
> 
< HTTP/1.1 301 Moved Permanently
< Server: nginx
< Date: Mon, 07 May 2018 15:57:08 GMT
< Content-Type: text/html
< Content-Length: 178
< Connection: keep-alive
< Location: https://google.com/
```
