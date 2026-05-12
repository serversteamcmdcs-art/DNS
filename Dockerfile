FROM technitium/dns-server:latest

EXPOSE 5380
EXPOSE 443

ENV DNS_SERVER_DOMAIN=localhost
ENV DNS_SERVER_PREFER_IPV6=false

CMD ["dotnet", "/opt/technitium/dns/DnsServerApp.dll"]
