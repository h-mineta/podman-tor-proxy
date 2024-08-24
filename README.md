# podman-tor-proxy
podman for tor proxy

## Start
```bash
podman build -t tor-proxy ./

podman play kube --replace k8s.yaml
```

## Stop(down)
```bash
podman play kube --down k8s.yaml
```

## Use Proxy
socks5://localhost:9050
