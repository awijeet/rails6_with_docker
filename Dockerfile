FROM ruby:3.0.0

#Install 3rd party dependencies.
# RUN apt update && apt -y install nodejs
#working directory
RUN mkdir /app
WORKDIR /app


#script run when container first starts
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT [ "/app/docker-entrypoint.sh" ]

# command to run

# To Build the container
# docker-compose build web

#To run the container bash
# docker-compose run web bash

# To run the docker-composer
# docker-compose up web