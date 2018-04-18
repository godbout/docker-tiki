# What is that?

Glad you asked. This is the source to build the [godbout/tiki](https://hub.docker.com/r/godbout/tiki/) docker image. That image is great way to start a quick dev environment on your local machine to destroy (and improve) tiki locally!

# How does that work?

You just need to put that [docker-compose.yml](https://gist.github.com/godbout/cb6e1bf6eebfe201974e015d4982ef34) file at the root of your [tiki code](https://gitlab.com/tikiwiki/tiki) and run ```docker-compose up```. The image will be downloaded automatically. Once everything is up, access tiki through [http://localhost:8080](http://localhost:8080).

# Todo

* Fine tune settings: PHP, OS, etc... (from experience with tiki and the image)
* Drink beers
