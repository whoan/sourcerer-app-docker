# Dockerfile for sourcerer app

This project is aimed to run sourcerer app locally with docker.

## Build the image

```
docker build -t my-sourcerer-app .
```

or:

```
docker-compose build
```

## Run sourcerer app

```
alias sourcerer='docker-compose run -v <path/to/your/repos>:/projects sourcerer'
sourcerer --help
sourcerer add <any-project-in-your-repos-path>
```

## Example

```
$ ls ~/repos
awesome-project

# add a project to sourcerer
sourcerer add awesome-project

# process statistics
sourcerer
```

## License

**sourcerer-app-docker** is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
