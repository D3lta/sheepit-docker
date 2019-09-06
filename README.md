### Available environment variables
- SHEEPIT_USER=STRING
- SHEEPIT_TOKEN=STRING
- SHEEPIT_CORES=INT
- SHEEPIT_MEM=STRING
- SHEEPIT_SERVER=STRING

### Example docker run
```
docker run --rm -d \
 --name "sheepit" \
 -e SHEEPIT_USER=D3lta \
 -e SHEEPIT_TOKEN="ZSQko2QvmU7wbaoKZZr1YnPmV6MdCzfTpAImpGRw" \
 -e SHEEPIT_CORES=8 \
 -e SHEEPIT_MEM=8G \
 d3lta/sheepit:latest
```

### Example docker-compose
see docker-compose.yml
