# Layers caching

## Bad utilization of layer caching example

    cd bad-caching
    docker build --tag bad-caching .
    docker build --tag bad-caching .

Notice `Using cache` message from docker.
Change `app.js` and then run again:

    docker build --tag bad-caching .
    
Even though dependencies in `package.json` has not changed `npm install` has been run again! :(

## Good utilization of layer caching example

    cd good-caching
    docker build --tag good-caching .
    docker build --tag good-caching .
    
Change `app.js` and then run again:

    docker build --tag good-caching .
    
This time `npm install` was cached! :)

Change `package.json` file and then run again:

    docker build --tag good-caching .
