## How to use

### Kubernetes

```bash
kubectl run psql-$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 4 | head -n 1) \
  --image=cciocov/postgresql16-client \
  --restart=Never --rm -it \
  -- postgres://user:pass@host/db
```

### Docker

```bash
docker run --rm -it cciocov/postgresql16-client -- postgresql://user:pass@host/db
```
