docker run -d --name CreditUnion -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=YourPassword" -p 1433:1433 --restart unless-stopped mcr.microsoft.com/mssql/server:2022-latest
