
### 1. What are some common use cases for NGINX?

Some common use cases for NGINX include:

As a web server to serve web content and handle many concurrent connections
As a reverse proxy and load balancer to distribute traffic across backend servers
As an SSL/TLS terminator to handle encryption/decryption
As a cache to improve performance by storing static content
### 2. How does NGINX handle tasks that could slow down the web server?

NGINX can act as an intermediary between clients and a second web server to efficiently handle tasks like negotiating SSL/TLS connections or compressing/caching content that might otherwise slow down the main web server. This allows the web server to focus on serving dynamic content.

### 3. Describe, as if to a non-technical friend how to actually pronounce “NGINX”, and why an org might choose to use it.

NGINX is pronounced like "Engine-X". The name comes from the core idea behind NGINX - to be an fast, efficient, highly-performing web server and load balancer that can handle many simultaneous connections, which made it very fast compared to other web servers when it was created.

An organization might choose NGINX because it excels at handling high traffic loads while using server resources very efficiently. It can act as a web server, reverse proxy, load balancer, and cache all in one package, minimizing complexity. So for performance-critical web applications, especially at large scales, NGINX is an attractive choice.