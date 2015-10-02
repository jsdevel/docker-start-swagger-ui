start-swagger-ui
===========================
> Start swagger-ui at a specified endpoint.

This allows you to tailor your swagger-ui setup to point to a specific endpoint
rather than the default petstore api.

## Usage

Simply pass the endpoint as an argument to the container during run I.E.

```sh
docker run -d -p 80:80 jsdevel/start-swagger-ui http://localhost:9059/v1/api-docs
```

Swagger will now display `http://localhost:9059/v1/api-docs` in the UI.
