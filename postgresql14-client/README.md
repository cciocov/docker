## How to use

### Kubernetes

```bash
kubectl run psql-$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 4 | head -n 1) \
  --image=cciocov/postgresql14-client \
  --restart=Never --rm -it \
  -- postgres://user:pass@host/db
```

### Docker

```bash
docker run --rm -it cciocov/postgresql14-client -- postgresql://user:pass@host/db
```
