FROM jsdevel/swagger-ui-2.0

WORKDIR /swagger

RUN sed -i'' "s|http://petstore.swagger.io/v2/swagger.json|$SWAGGER_UI_ENDPOINT|" index.html
RUN cat index.html
