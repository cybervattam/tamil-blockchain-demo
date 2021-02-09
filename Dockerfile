FROM       node:alpine 

LABEL MAINTAINER=https://github.com/vjambulingam/tamil-blockchain-demo

EXPOSE     3000

WORKDIR    /tamil-blockchain-demo 

COPY       package.json /tamil-blockchain-demo

RUN        npm install

COPY       . /tamil-blockchain-demo 

CMD        ["bin/www"]
