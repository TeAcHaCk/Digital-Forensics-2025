
## Windows Registry

The Windows Registry is a database stored in all Windows Operating Systems and it stores information like **System Configuration**, **User Preferences** and **Application Settings**. They are organized into hives with names such as **`HKEY_LOCAL_MACHINE`** and **`HKEY_CURRENT_USER`**. It holds data on installed software, connected devices and user activities

As a forensic artifact, the Windows Registry is a goldmine for uncovering evidence of user actions, system changes and software usage. It can also reveal recently used files, connected devices, autostart programs and many more. The fact that it's a central role in system operations and its ability to retain historical data about the machine make it essential for reconstructing events during digital investigations

---
---
## RegRipper

`RegRipper` is an open source forensic tool designed for extracting, analyzing and parsing the Windows Registry. It operates through a series of Perl scripts and plugins that target specific Registry Hives, making it a very powerful tool when analyzing Registry Hives. It also automates the process, thus reducing the risk of Manual Errors and speeds up investigations

---
### Installation

To install `RegRipper` on Windows, clone the github repository and run `rr.exe`

**Windows:**
```shell
git clone https://github.com/keydet89/RegRipper3.0
cd RegRipper3.0/
rr.exe
```

**Debian Based:**
```shell
sudo apt install regripper
```
**NOTE: This version of installing regripper will install the CLI version of regripper. If you want to work on the GUI of RegRipper, then install wine, then run `rr.exe` through wine**


`RegRipper` is already installed in the Custom Linux distro that has been shared, and can be accessed through both the CLI and the GUI. Both methods are accessible in the Custom Linux provided. If you are comfortable with the CLI then open a terminal and enter 
```shell
regripper -h
```
That will output how to use regripper through the command line properly

To launch the GUI of RegRipper in the Custom Linux, run the following command:
```shell
rr
```
This will launch the GUI for Regripper and we can use Regripper

---
### Analyzing the Registry

**Step 1: Prepare the Environment**
- Copy the hive files form the target machine into the forensic environment

**Step 2: Load in RegRipper**
- If you are using the GUI, then you can Browse for the file and load it in RegRipper, then **`Rip It`**
- If you are using the CLI, then you can run the following command to load the Registry File
```shell
regripper -r <path_to_hive> -f <plugin>
```
The plugin is optional and not a mandatory flag

---
### Disadvantages
- **Windows Centric tool:** It's made just to analyze Windows Registry, but that's what this tool is made for. It's not meant to be an all in one weapon. So I think this is not *exactly* a disadvantage
- **Visualization:** Since all of the output is text-based, it requires manual interpretation, but then again, is this really a disadvantage? What are forensic analyzers going to do if they're being spoonfed, so this is also not _exactly_ a disadvantage

--- 
---

## RegLookup

`RegLookup` is a Linux based command line tool for parsing and analyzing Windows Registry Files. It's a very simple and lightweight tool that is used to directly analyze Windows NT-based registry files. It can also be used to retrieve deleted data from registry hives.

It can be used to read an entire registry and output it in a standard format so that it's easy to read and understand. There are also features for filtering of results based on certain parameters.

---
### Installation

`RegLookup` has been installed in the Custom Linux distro provided, but if you do want to install RegLookup yourself, here's how to do it:

1. **Debian Based:**
```shell
sudo apt install reglookup
```

2. **Arch Based**
```shell
git clone https://aur.archlinux.org/reglookup.git
cd reglookup/
makepkg -si
```

3. **Build from source**
```shell
curl -O http://projects.sentinelchicken.org/data/downloads/reglookup-src-1.0.1.tar.gz

tar -xvzf reglookup-src-1.0.1.tar.gz
cd reglookup-src-1.0.1/
sudo apt install scons
scons
sudo scons install
```
(I have used apt here, but use what package manager your operating system uses)

---

### Usage

**Basic Syntax**
```shell
reglookup <options> <path_to_hive>
```

Examples:

1. **Extract all the keys and values**
```shell
reglookup -a NTUSER.DAT
```

2. **Search for a specific key**
```shell
reglookup -k "Microsoft" SYSTEM
```

3. **Parse data into CSV format**
```
reglookup -o output.csv SOFTWARE
```

---
### Best Practices

1. It's always useful to pair reglookup with other tools like RegRipper for a better analysis
2. Use the output flag to make sure that the findings are documented well
3. Verify the automated output with manual analysis

--- 
### Disadvantages

1. **Command Line Interface Only:** There is no GUI for this particular application, but let's be real, that's a huge advantage.
2. **Used majorly in Linux:** Primarily used in Linux machines and not in Windows or Mac environments
3. **Learning Curve:** The Forensic Analyzer will have to know the Registry Structure to be comfortable with finding the required artifacts

---