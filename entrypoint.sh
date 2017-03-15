#!/bin/bash

if test "$1" = install ; then
    cat <<'EOF'
function ceph() {
   docker run -ti --rm \
       -v $PWD:/etc/ceph/ \
       mazebuhu/ceph-cmd \
       ceph "$@"
}
EOF
else
   "$@"
fi