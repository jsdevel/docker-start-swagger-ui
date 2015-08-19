FROM capoferro/swagger-ui

WORKDIR /swagger

RUN sed -i'' "s|http://petstore.swagger.wordnik.com/api/api-docs|$SWAGGER_UI_ENDPOINT|" index.html
