FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY WebApplication2/*.csproj ./WebApplication2/
COPY WebApplication2/*.config ./WebApplication2/
RUN nuget restore

# copy everything else and build app
COPY WebApplication2/. ./WebApplication2/
WORKDIR /app/WebApplication2
RUN msbuild /p:Configuration=Release


FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8 AS runtime
WORKDIR /inetpub/wwwroot
COPY --from=build /app/WebApplication2/. ./