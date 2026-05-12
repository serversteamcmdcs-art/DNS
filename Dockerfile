FROM technitium/dns-server:latest

ENV DNS_SERVER_DOMAIN=localhost
ENV DNS_SERVER_PREFER_IPV6=false

# Указываем папку конфигов отдельно от бинарников
RUN mkdir -p /etc/dns

EXPOSE 5380

CMD ["dotnet", "/opt/technitium/dns/DnsServerApp.dll", "/etc/dns"]
