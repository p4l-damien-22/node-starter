FROM runnable/node-starter
MAINTAINER Runnable, Inc.

# Cache NPM Install
ADD ./package.json /app/
RUN npm install

# Add Application Files
ADD . /app/
EXPOSE 3000
EXPOSE 2000

ENTRYPOINT ["bash", "-c"]

# Run Application
CMD npm start
CMD npm start echo 1
