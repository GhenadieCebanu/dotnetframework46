#Build image
docker build -t webapp .

#Run image
docker run --name aspnetmvcwebapp --rm -it -p 8000:80 webapp

After the application starts, navigate to http://localhost:8000 in your web browser. You need to navigate to the application via IP address instead of localhost for earlier Windows versions, which is demonstrated in View the ASP.NET app in a running container on Windows.

Note: The -p argument maps port 8000 on your local machine to port 80 in the container (the form of the port mapping is host:container). See the Docker run reference for more information on commandline parameters.
https://github.com/microsoft/dotnet-framework-docker/blob/master/samples/aspnetapp/README.md#view-the-aspnet-app-in-a-running-container-on-windows