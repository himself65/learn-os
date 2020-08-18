# What's edk2

> EDK2 is a modern, feature-rich, cross-platform firmware development environment for the UEFI and PI specifications from www.uefi.org.

## How to build

```bash
cd /path/to/edk2
make -C BaseTools

cp /path/to/learn-os/build/target.txt /path/to/edk2/Conf/target.txt

cd /path/to/edk2
# make sure you are in the `edk2` directory when you use `build` command
source edksetup.sh

build
```

## Where is output

In this project, edk2 output files are in the `deps/edk2/Build/OvmfX64/DEBUG_GCC5/FV` directory.

You can also find `OVMF.fd`, `OVMF_CODE.fd`, `OVMF_VARS.fd`, which we use these later.

## References

https://wiki.ubuntu.com/UEFI/EDK2

https://askubuntu.com/questions/204093/where-can-i-find-the-build-command-needed-to-build-the-environment-for-edk-2
