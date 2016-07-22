
If you are using nginx and run your site with ssl you might want to add a rather strong
ssl config to it.

Based on the Infos provided by raymii.org and the mozilla foundation on that topic i just put 
that setup into some files that you could easily add to your nginx config. 
You can use the ssllabs ssltest to check your setup. With the ssl config provided you will easily get a A Rating.
To make it to A+ you need to activate HSTS as well.

### Setup Instructions
1. You should put the folder `secrecy` into /etc/nginx/
2. You should include the basic.conf of secrecy into your nginx.conf `include /etc/nginx/secrecy/basic.conf;` @see the nginx.conf sample file
 1. If you don`t want to add it globally you can also add it to your server definitions, see the sites-available sample
3. Test your nginx config with `nginx -t`
4. Reload your webserver configuration `service nginx reload`

### Upcoming
I will also create a salt formula that will install nginx with some helpfull configuration including that ssl one.

### References
- https://raymii.org/s/tutorials/Strong_SSL_Security_On_nginx.html
- https://wiki.mozilla.org/Security/Server_Side_TLS
- https://www.ssllabs.com/ssltest/

### To create the dh4096.pem file that is needed
`openssl dhparam -out dh4096.pem 4096` and move the file into the right location

