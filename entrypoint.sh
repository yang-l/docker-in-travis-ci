#!/usr/bin/env bash

[ -f "/proc/sys/fs/binfmt_misc/register" ] || mount -t binfmt_misc binfmt_misc /proc/sys/fs/binfmt_misc
[ -f "/proc/sys/fs/binfmt_misc/aarch64" ] || { echo ':aarch64:M::\x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\xb7:\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff:/usr/bin/qemu-aarch64-static:' | sudo tee /proc/sys/fs/binfmt_misc/register || exit 1 ; }

bash -c "$@"
