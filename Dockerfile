# EARTH Spark

FROM ubuntu:bionic-20190307
LABEL maintainer="Gabriel Cardona <gabriel.earth.engineering@gmail.com>"
LABEL description="Docker image with Ubuntu 18, Java Developer Kit (JDK) 8, NodeJS 10 and Redis. For use with Spark ✨🔥🌎"
LABEL url="https://www.earth.engineering"
ENV DEBIAN_FRONTEND=noninteractive
ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
# RUN apt-get update && wget https://deb.nodesource.com/setup_10.x && bash setup_10.x && apt-get install -y nodejs
# RUN apt install -y --no-install-recommends redis-server && npm i -g pm2 && pm2 update
CMD ["bash"]

# Prepare the work directory
# RUN mkdir -p earth/conf
# WORKDIR /earth

# # Install proxy dependencies
# RUN mkdir /earth/app
# ADD app/package.json /earth/app/package.json
# RUN cd app && npm install

# # Configures full node
# RUN mkdir FullNode
# ADD conf/full.conf FullNode/fullnode.conf
# ADD conf/FullNode.jar FullNode/FullNode.jar

# RUN mkdir BlockParser
# ADD conf/run.sh BlockParser/run.sh
# ADD conf/BlockParser.jar BlockParser/BlockParser.jar

# RUN mkdir eventron
# ADD conf/process.json eventron/process.json
# ADD conf/eventron eventron/eventron

# # Separating install from src speeds up the rebuilding
# # if the node app is changed, but has the ADD app/version

# ADD app/index.js app/index.js
# ADD app/version.js app/version.js
# ADD app/src app/src
# ADD bin bin
# RUN chmod +x bin/accounts-generation.sh

# ADD earthWeb earthWeb
# RUN chmod +x earthWeb

# ADD pre-approve.sh pre-approve.sh
# ADD spark.sh spark
# RUN chmod +x spark

# CMD ["./spark", "v0.1.11"]
