# hd
After create 5 coreos server

- **on eachbox, pull from this repo:**

```git clone https://github.com/nhanct/hd.git && cd hd```

- **on CoreOS NameNode + DNS box:**

```cd dns-server```

run:

```sh make_dns.sh```

-> build dns-server images

```cd ../namenode```

```sh build_namenode.sh```

after build and run success:

```cd ../dns-server```

run

```sh run_dns.sh```
you will get ip of dns, remember it

**Run datanode with dns server on CoreOS DataNOde**

```sh run_datanode.sh ip_Of_dns_server```

