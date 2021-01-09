# Basic CI/CD pipeline in Azure using AKS for .net framework 4.6 project

## Build image locally
docker build -t webapp .

## Run image locally
docker run --name aspnetmvcwebapp --rm -it -p 8000:80 webapp

After the application starts, navigate to `http://localhost:8000` in your web browser. You need to navigate to the application via IP address instead of `localhost` for earlier Windows versions, which is demonstrated in [View the ASP.NET app in a running container on Windows](https://github.com/microsoft/dotnet-framework-docker/blob/master/samples/aspnetapp/README.md#view-the-aspnet-app-in-a-running-container-on-windows).

*Note: The -p argument maps port 8000 on your local machine to port 80 in the container (the form of the port mapping is host:container).*

## Build infrastructure in Azure
https://github.com/GhenadieCebanu/dotnetframework46/blob/master/aks.txt

## Build pipeline in Azure DevOps
From Project Settings add Service connections to Azure AKS and Container registry.  
Follow steps from here:
https://github.com/GhenadieCebanu/dotnetframework46/blob/master/configure%20azure%20cicd.txt

#### Enjoy :)

### Useful links
https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops&tabs=yaml#use-a-microsoft-hosted-agent
https://docs.microsoft.com/en-us/learn/modules/aks-workshop/
https://kubernetes.io/docs/reference/kubectl/cheatsheet/
https://docs.microsoft.com/en-us/azure/aks/windows-container-cli