FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y openjdk-16-jdk
RUN update-alternatives --config java --skip-auto
RUN update-alternatives --config javac --skip-auto
RUN mkdir minecraft
RUN curl https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar --output  minecraft/minecraft_server.jar
RUN echo "eula=true" > eula.txt
CMD java -Xms1024m -Xmx1024m -jar minecraft/minecraft_server.jar --nogui
