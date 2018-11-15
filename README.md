# Dockerfile for sourcerer app

This project is aimed to run [sourcerer app](https://github.com/sourcerer-io/sourcerer-app) locally with docker

## Build the image

```
docker build -t my-sourcerer-app .
```

## Run sourcerer app

```
# function ready for your initialization file (eg: ~/.bashrc)
sourcerer() {
  local sourcerer_app_docker=/path/to/sourcerer-app-docker/  # CHANGE THIS!
  local repos=/path/to/your/repos/                           # CHANGE THIS!
  docker-compose -f "$sourcerer_app_docker"/docker-compose.yml run -v "$repos":/projects sourcerer
}
sourcerer --help
sourcerer add <any-project-in-$repos>
```

## Example

```
$ ls ~/repos
awesome-project

# add a project to sourcerer
sourcerer add awesome-project

# check tracked repositories
sourcerer list

# process statistics
sourcerer
```

## License

**sourcerer-app-docker** is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
