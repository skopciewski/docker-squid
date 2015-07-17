## Usage

```bash
    docker run -d --name squid --net host --privileged skopciewski/squid
```
or with persistent cache

```bash
    docker run -d --name squid --net host --privileged -v /tmp/cache:/var/cache/squid skopciewski/squid
```

### Iptables

Enable

```bash
    iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to 3128 -w
```

Disable

```bash
    iptables -t nat -D PREROUTING -p tcp --dport 80 -j REDIRECT --to 3128 -w
```

### Inspecting the container

```bash
    docker exec -it squid /bin/sh
```

