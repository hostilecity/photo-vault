# photo-vault

### Setup

1. configure oauth
```
export GOOGLE_CLIENT_ID=xxxx
export GOOGLE_CLIENT_SECRET=xxxx
```

### Deployment
```
docker build . -t photo-vault
docker tag photo-vault registry.hostilecity.net/v2/photo-vault
docker push registry.hostilecity.net/v2/photo-vault
```