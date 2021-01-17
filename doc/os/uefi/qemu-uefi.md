# QEMU using UEFI

## Build OVMF

Follow this tutorial [EDK2](https://wiki.ubuntu.com/UEFI/EDK2).

Notice that if `GCC46` not work well that throw error about `not found`,
you should replace it with `GCC5`.

## Install QEMU

```bash
sudo vim /etc/libvirt/qemu.conf

# add this to the conf
 781   │ nvram = [
 782   │    "/path/to/OVMF.fd:/path/to/OVMF_VARS.fd"
 783   │ ]

sudo systemctl restart libvirtd
systemctl status libvirtd
```

## Run OVMF

Follow this tutorial [OVMF](https://wiki.ubuntu.com/UEFI/OVMF).

## Kernel Debug

<https://wiki.osdev.org/Kernel_Debugging>

## References

[UEFI-osdev](https://wiki.osdev.org/UEFI)
