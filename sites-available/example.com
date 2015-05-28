server {

    # listen on standard ssl port and activate ssl ==> equals adding ssl=on to secrecy/directive-only/ssl.conf
    listen 443 ssl;

    server_name example.com;
    
    root /var/www/example.com;
    
    # to add hsts and xframe options
    # if you did not add basic.conf to your nginx.conf you might want to add strong.conf directly here
    include "secrecy/add_strength.conf";
    
    location ...
}
