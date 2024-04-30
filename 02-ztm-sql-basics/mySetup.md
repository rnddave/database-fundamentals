# Docker

I'm following this particular course on Windows, but as I don't use Windows all too often, I am using Docker on Windows. 

```docker run --name exposed-postgres  -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres```

This will launch a postgres install with the 5432 port mapped, allowing my local machine to access it. 

# Valentina Studio

I then used the free version of [valentina studio](https://www.valentina-db.com/en/all-downloads/vstudio/current). 

Once installed, I am able to connect to Postgres inside Docker. 

There is a Docker image for Valentina as well, but I didn't know that when I started. 