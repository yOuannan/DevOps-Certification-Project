FROM devopsedu/webapp
RUN rm /etc/apache2/mods-enabled/dir.conf 
COPY dir.conf /etc/apache2/mods-enabled/
RUN rm -r /var/www/html/ && mkdir /var/www/html
COPY ./website/ /var/www/html/
RUN service apache2 start  
EXPOSE 80
ENTRYPOINT service apache2 start && /bin/bash 
   
