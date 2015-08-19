docker-swagger-ui
===========================
> Swagger UI in a docker container with an EVN driven endpoint at build time.

This allows you to tailor your swagger-ui setup from your CI server of choice I.E.
Jenkins or Travis.

## Usage

Docker currently doesn't support build time parameters to docker files [see #docker/docker/issues/14634](https://github.com/docker/docker/issues/14634).  For now, it is necessary to build images with this project as follows:

```sh
export SWAGGER_UI_ENDPOINT=https://github.com
cat Dockerfile | envsubst | docker build -t swagger-ui ./
```

You can then run the image as follows:

```sh
sudo docker run -p 80:80 -t swagger-ui
```

Swagger will now display the value of `SWAGGER_UI_ENDPOINT` during build in the UI.
