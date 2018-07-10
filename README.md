# smashing
Run [smashing](https://github.com/Smashing/smashing) in a [Docker](http://docker.io/) container.

Originated from: [frvi/dashing](https://registry.hub.docker.com/u/frvi/dashing/)
Link: [visibilityspots/smashing](https://registry.hub.docker.com/u/visibilityspots/smashing/)

## Run
```docker run -d -p 8080:3030 visibilityspots/smashing```

And point your browser to [http://localhost:8080/](http://localhost:8080/).


## Configuration
### Custom smashing port
If you want smashing to use a custom port inside the container, e g 8080, use the environment variable `$PORT`:

```docker run -d -e PORT=8080 -p 80:8080 seansackowitz/smashing```

### Specify Git Info
URI does not include https.
```GIT_REPO_URI```
Git Username to clone with
```GIT_USERNAME```
Personal Access Token or password
```GIT_TOKEN```

## Thanks
- [@mattgruter](https://github.com/mattgruter), awsome contributions!
- [@rowanu](https://github.com/rowanu), [Hotness Widget](https://gist.github.com/rowanu/6246149).
- [@munkius](https://github.com/munkius), [fork](https://gist.github.com/munkius/9209839) of Hotness Widget.
- [@chelsea](https://github.com/chelsea), [Random Aww](https://gist.github.com/chelsea/5641535).

## TODO:
- [x] Use official Ruby image from Docker hub. (Thank you [@bemehow](https://github.com/bemehow))

## License
Distributed under the MIT license
