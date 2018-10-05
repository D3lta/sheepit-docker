### env:
- USER=STRING
- PASS=STRING
- cores=INT

!!!!Public Username and Password!!!!

### docker run
```
docker run --rm -d \
 --name "sheepit" \
 -e USER=D3lta \
 -e PASS="ZSQko2QvmU7wbaoKZZr1YnPmV6MdCzfTpAImpGRw" \
 -e cores=8 \
 d3lta/sheepit:latest
```

### docker-compose
see docker-compose.yml
