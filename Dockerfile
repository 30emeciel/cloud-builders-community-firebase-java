FROM node:16
RUN apt-get update
RUN apt-get -y install default-jdk-headless
RUN npm i -g firebase-tools
ADD firebase.bash /usr/bin
RUN chmod +x /usr/bin/firebase.bash

ENTRYPOINT [ "/usr/bin/firebase.bash" ]
