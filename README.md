# Dockerfile for sourcerer app

This project is aimed to run [sourcerer app](https://github.com/sourcerer-io/sourcerer-app) locally with docker

## Build the image

```
docker build -t my-sourcerer-app .
```

## Run sourcerer app

```
alias sourcerer='cd path/to/sourcerer-app-docker && docker-compose run -v <path/to/your/repos>:/projects sourcerer'
sourcerer --help
sourcerer add <any-project-in-your-repos-path>
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
