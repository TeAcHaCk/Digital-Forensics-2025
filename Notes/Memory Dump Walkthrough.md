
## LiME Walkthrough

`LiME` (Linux Memory Extractor) is a lightweight and open source tool designed for memory acquisition on Linux machines. When it means Linux machines, it means _all_ Linux machines. It can also be used to capture the RAM of an Android device as well. It includes multiple output formats, including RAW and a few LiME-specifice formats. `LiME` works by loading a loadable kernel module to directly access and extract the system memory

---

### Installing `LiME`
`LiME` is not an application that can be packaged and shared, so we have to build it from source to install it. This process is common for all Linux distributions

```shell
git clone https://github.com/504ensicsLabs/LiME
cd LiME/src
make
```

Once the Kernel Module has been built, we can use it to capture memory dumps.

--- 
### Capture Memory Dump

**Step 1: Load the Kernel Module**
We have to load the Kernel module that is created using `insmod`

```shell
sudo insmod lime.ko "path=path/to/file.lime format=lime"
```

- `path`: This is the file path to which the memory dump will be saved
- `format`: The output format. The output can be in `lime`, `raw` or `padded`

**Step 2: Monitor**
You really can't do much while the kernel module is dumping the memory. Depending on the size of the RAM and the speed of the machine, it might take a while

**Step 3: Unload Kernel Module**
After the dump is created, unload the `LiME` module so it does not cause additional issues while it's in memory
```shell
sudo rmmod lime
```

--- 
### Best Practices

1. Use a secure output location to avoid tampering of data or changing of system memory during the process
2. Minimize System Changes. Basically avoid running any programs during this acquisition period so that there is no change in the volatile memory
---
---
## `fmem` Walkthrough

`fmem` is another lightweight forensic tool that provides access to the volatile memory of the a Linux machine. This tool allows us to acquire a memory dump with standard tools like `dd` or `Guymager`, making it easily integrable into forensic workflows.

---
### Installing `fmem`
Again, being a tool that is dependent on the kernel version, it's not a package that can be built, but instead has to be compiled from the source

```shell
git clone https:/github.com/NateBrune/fmem.git
cd fmem
make
```

---
### Capturing Memory Dump

**Step 1: Load the Kernel Module**
Insert the kernel module into the kernel to create a direct interface for memory

```shell
sudo insmod fmem.ko
```
This creates a special device file located at `/dev/fmem`

**Step 2: Dump Memory**
Using a tool like `dd` or `Guymager` we can create a forensic image of the device `dev/fmem`

```shell
sudo dd if=/dev/fmem of=/path/to/file.img bs=1M status=progress
```

**Step 3: Unload Kernel**
We don't want the module to be in the memory and cause issues later, so we'll remove the kernel module once it is done

```shell
sudo rmmod fmem
```

---