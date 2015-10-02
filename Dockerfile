FROM jsdevel/swagger-ui-2.0

RUN mkdir -p /usr/local/bin

# The ENTRYPOINT from jsdevel/swagger-ui-2.0 is `nginx`.
# In order to enforce an endpoint as a required param, we decorate the `nginx`
# command with `start-swagger`.
RUN mv /usr/sbin/nginx /usr/sbin/nginx.old
ADD start-swagger-ui /usr/sbin/nginx
