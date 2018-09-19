# alibuild-docker
Docker container for aliBuild based on https://alice-doc.github.io/alice-analysis-tutorial/building/

### Usage

* build the container
```
# docker build -t alibuild .
```

* run the container, map a local directory to /alice in the container
```
# docker run -it --name alibuild -v /home/user/alice:/alice alibuild /bin/bash
```
