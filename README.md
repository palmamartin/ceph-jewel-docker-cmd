# ceph-jewel-docker-cmd

This builds a container based on `centos:7` and installs the `ceph` **Jewel** binary. We can then expose the `ceph` command inside the container to the shell using a simple shell function. See installation instruction below. 

_Why?_: This allows us to run the `ceph` command for example on macOS or any other not officially supported platform.

## Installation

- Install Docker (https://www.docker.com/community-edition#/download)
- Copy the following function to your `~/.bashrc`:

```
function ceph() {
   docker run -ti --rm -v $PWD:/etc/ceph/ mazebuhu/ceph-jewel-docker-cmd ceph "$@"
}
```

Put your `ceph.conf` and user `keyring` into the current working directory. (_Note_: The current working directory will be mapped inside the container as `/etc/ceph/`)

- Verify that it works: 

```
ceph -v
```

