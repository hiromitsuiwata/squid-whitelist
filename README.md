## コンテナ作成

```bash
podman build -t proxy .
podman run --rm -it \
  -v ./settings.xml:/etc/maven/settings.xml \
  -v ./squid.conf:/etc/squid/squid.conf \
  -v ./whitelist:/etc/squid/whitelist \
  -v ./proxy.conf:/etc/apt/apt.conf.d/proxy.conf \
  -e http_proxy=localhost:3128 \
  -e https_proxy=localhost:3128 \
  -p 8080:8080 \
  -p 8081:8081 \
  --name proxy \
  localhost/proxy bash
```

## squid

squid

## Jenkins

```bash
wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```

## Nexus

```bash
wget -P /opt https://download.sonatype.com/nexus/3/nexus-3.64.0-04-unix.tar.gz
```


mvn clean package site
npm -g config set proxy http://localhost:3128
npm -g config set https-proxy http://localhost:3128

squid -k restart

sudo hwclock --hctosys

pgrep squid | xargs kill -9


export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
./nexus start

```
