# image-turk
This is a very simple web ui for making queries to search engines for images and manual filtering of retrieved results

## Installation
1. `docker build -t image-turk-nastya .`
2. `docker run -d --name image-turk-nastya -p 8080:5001 -v /path/to/images/dir:/opt/image-turk-nastya/data image-turk-nastya`
