### Available environment variables
- SHEEPIT_USER=STRING
- SHEEPIT_TOKEN=STRING
- SHEEPIT_CORES=INT
- SHEEPIT_MEM=STRING
- SHEEPIT_SERVER=STRING

## Examples
### docker run
```
docker run --rm -d \
 --name "sheepit" \
 -e SHEEPIT_USER=D3lta \
 -e SHEEPIT_TOKEN="N91VOYbtVgEzJAu2ExMl3JEvKSKPBXxSz4PAvsEJ" \
 -e SHEEPIT_CORES=8 \
 -e SHEEPIT_MEM=8G \
 d3lta/sheepit:latest
```

### docker-compose
see docker-compose.yml
