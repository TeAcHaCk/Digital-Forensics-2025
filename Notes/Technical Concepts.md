# Basic Technical Concepts

Throughout this file, we'll be going through some basic concepts that are important during the technical part of a forensic investigation.

We'll be talking about how data is represented, how data is stored, how disks are partitioned and some hidden features that are in disks

## Data Representation

The data that we see on the screen of a laptop or a machine, is not how data is stored and read in the internals of a computer.
Data is stored in the form of `bits`, `bytes`, `binary`, `hexadecimal`, and `ASCII`

### Bits and Bytes

Computers communicate using **binary**. Binary values are one of two values or states. Either `off` or `on`. `0` or `1`. `yes` or `no`.
Computers use the `presence of current (1)` or `absence of current (0)` in order to represent states.

A **bit** is a single binary digit. It's the smallest unit of data. A **bit** takes the values `0` or `1`.

A group of **8 bits** together is called as a **byte**. One byte is used to represent a single character or a symbol.

### Larger Units

When it comes to storing data, bits and bytes don't really help because majority of the files that have to be stored contain a lot of data, which cannot be represented with single bytes.

In order to take care of this, we use Kilobytes, Megabytes and Gigabytes.

- 1 Kilobyte(KB) = 1000 bytes
- 1 Megabyte(MB) = 1000 Kilobytes
- 1 Gigabyte(GB) = 1000 Megabytes

These are the standard storage metrics, but there are other metrics that are used like Kibibytes, and Kilobits

Kibi/Mebi/Gibi bytes are used in some technical contexts where the binary system is used

- 1 Kibibyte(KiB) = 1024 bytes
- 1 Mebibyte(MiB) = 1024 Kibibytes
- 1 Gibibyte(GiB) = 1024 Mebibytes

When it comes to data transfer however, we don't speak in terms of bytes. We use Kilo/Mega/Giga bits instead of bytes

- 1 Kilobit(Kb) = 1000 **bits**
- 1 Megabit(Mb) = 1000 **bits**
- 1 Gigabit(Gb) = 1000 **bits**

Have a look at the difference of the casing in the units. When the `b` is lowercase, we're speaking in terms of `bits`, when `B` is capitalised, we're speaking in terms of `bytes`

KB, MB, GB etc are used in storage devices. KiB, MiB, GiB are used in terms of storage, but at the lower level where precision is important in calculation. Kb, Mb and Gb are used in terms of network speeds or transfer speeds

### Binary, Hexadecimal and ASCII

Like mentioned earlier, Binary is used by computers in order to create, store and transfer data. `1010` is an example of a binary string that can be stored in the computer directly

Hexadecimal is a *compact* way of representing binary data. Binary data has only 2 symbols, `0` and `1`, while Hexadecimal has 16 symbols that can be used to represent data. It takes the symbols `0-9` and `A-F` in order to represent data. Each hex digit equals 4 binary digits.

For example: `101111` in binary can be represented as `BF` in Hexadecimal. It's a more concise way of showing data.

**ASCII** maps characters to numbers, allowing for text or symbols to be stored in numeric form to easily store data. For example `A = 65` in the ASCII standard

---

## Storage Devices

Storage is one of the most important things that we use in everyday life when we're using a computer. Modern computers use two kinds of storage devices, namely **Hard Disk Drives** and **Solid State Drives**

### Hard Disk Drives (HDDs)

HDDs are the traditional storage devices that use Magnetic storage in order to store data. It's also a non-volatile storage device. It consists of one or more spinning disks (called platters) coated with magnetic material. Data is written to and read from the surface of these platters using read/write heads that move very quickly across the surface.

HDDs are one of the oldest types of storage devices, but they are still widely used today in laptops, desktops and servers because of their low cost and high storage capacity.

#### Key Components

- **Platters:** These are the disks that are inside the HDD where the data is stored magnetically
- **Spindle:** The spindle is what spins the platters at high speeds. HDDs usually spin at 5400 to 7200 RPM in consumer drives
- **Read/Write Heads:** These are the components that read and write data to the platters. These heads float just above the platter surface as the disk spins
- **Actuator Arm:** This part is what moves the read/write heads to the correct position over the platter.

#### How HDDs Work

HDDs store data magnetically on these rotating platters. These platters are further divided into tracks and sectors. Each sector is a small unit where data is stored. The read/write heads move across these platters, altering the magnetic state of the material to either store or retrieve data.

When a file is saved to a HDD, it is broken down into smaller pieces and written across the platter in various sectors. The spinning platters ensure that the read/write heads can access different sectors quickly, allowing for quick data retrieval.

#### Types of HDDs

1. **Internal HDD:** These are the hard drives that are installed inside computers and servers. They connect to the motherboard via interfaces like SATA.

2. **External HDD:** These are portable drives that can be carried around and connected to computers via USB, Thunderbolt or other interfaces. These are usually used for portable storage or backup

#### Advantages and Disadvantages of HDDs

- **Large Storage Capacity:** HDDs are available in large storage sizes, usually in Terabytes, making them ideal for storing large amounts of data.
- **Cost-Effective:** Compared to other storage devices, HDDs give a lower cost per storage ratio, making them a popular choice for people and businesses that value their pockets
- **Long History:** HDDs have been around for so many decades, and it doesn't look like they are going to leave anytime soon. Since they have been around for so long, they have a proven history of being reliable when used properly

- **Slow speed:** We did speak about how the spindle spins very quickly in order to give high speeds of retrieval, but they are slow when compared to other data storages like SSDs. Since a HDD has mechanical parts, the spinning platters create latency, making data access slower
- **Physical Damage:** HDDs rely on moving parts, so any small drop or disturbance can damage the moving parts of the HDD very easily
- **Side Effects:** Due to the mechanical parts of the spinning platters, they create a lot of noise and heat, which can lead to degradation over time.


Here is a small [video](https://www.youtube.com/watch?v=tDacjrSCeq4) that shows a server room that has HDDs. In this video we see how loud HDDs are and how external disturbances like noise can disturb and increase latency of a HDD

### Solid State Disks (SSDs)

A Solid State Drive is a type of non-volatile storage device that uses **NAND flash memory** to store data. Unlike HDDs, these don't have any moving parts. Data is stored in memory chips that retain information even when power is switched off. This makes SSDs faster and more durable than HDDs

SSDs are majorly used in more recent laptops and desktops due to their speed, efficiency and reliability

#### Key Components of SSDs

- **NAND Flash Memory:** This is the primary storage medium of SSDs made of memory cells that store data. There are several types of NAND, like Single Level Cell, Multi-Level, Triple-Level and Quad-Level. Each of these offer different endurance and performance
- **Controller:** This is what manages data read/write operations between the computer and the NAND Flash Memory, optimizing performance and wear leveling
- **DRAM Cache:** Many SSDs include a DRAM Cache that stores frequently accessed data to improve read/write speeds

#### How SSDs Work

SSDs use NAND flash memory to store data in cells made up of **floating-gate transistors**. These memory cells are grouped into **pages** and these pages are grouped into **blocks**. Data is written to these blocks in pages, and blocks must be erased before new data can be written to them

When the system requests for data, the controller gets it from the memory cells. Since SSDs have no moving parts, data retrieval is much faster when compared to HDDs.

#### Types of SSDs

1. **SATA SSDs:** These are designed to be a replacement to traditional HDDs. The connect using the SATA interface, providing a significant speed boost when compared to HDDs, but they are still limited by the older SATA interface's maximum speed
2. **NVMe SSDs:** NVMe stands for Non-Volatile Memory Express. These SSDs use the PCIe (Peripheral Component Interconnect Express) interface, offering a much faster data transfer speed when compared to SATA interfaces. These are used in high-performance machines like gaming machines and servers.

#### Advantages and Disadvantages of SSDs

- **Faster Speed:** SSDs provide much faster read/write speeds compared to HDDs
- **Durability:** SSDs have no moving parts, which make them more resistant to physical shock and damage. This is useful for devices that may be subjected to loud areas, vibrations or drops
- **Low Power Consumption:** SSDs use less power than HDDs, contributing to longer batter life in laptops and lower energy costs in data centers
- **Quieter Operation:** Since there are moving parts, SSDs are quieter when compared to HDDs

- **Higher Costs:** SSDs are more expensive per GB compared to HDDs, making them *less* cost effective when compared to HDDs
- **Limited Write Ability:** NAND Flash Memory cells have a limited number of write/erase cycles before they wear out. The number of cycles doesn't matter to you and I, but for write intensive workloads, it can reduce the lifespan of the SSD
- **Lower Storage Capacity:** While SSDs do come in large sizes, they still are not as big as HDDs. The higher the storage of an SSD, the more the price of the SSD.

#### TRIM

**TRIM** is a command that helps the Operating System in identifying which blocks are no longer in use and which can be rewritten in an SSD. This way, the SSD can access only the blocks holding the data. Also when the delete command is issued, the TRIM command immediately wipes the pages/blocks that have been marked for deletion where the files are stored.

When data needs to be deleted from an SSD, it doesn't matter if the data is a small part of the block, the SSD wipes the entire block itself. This means that the remaining data has to be stored in a buffer memory, then the block has to be wiped, then the data has to be restored. This is not an efficient way of wiping or erasing memory.
This means that the SSD is going to have a very poor performance if it has to keep doing this. It writes to buffer memory, wipes a block, then rewrites the SSD from the buffer. This can lead to a lot of erasing and rewriting, which leads to fast degradation of the flash memory chips.

TRIM ensures that this doesn't happen. Instead of managing whole blocks, a TRIM enabled SSD can work with the pages. It marks unused blocks, so that the SSD knows which blocks can be wiped and reused

#### Garbage Collection

**Garbage Collection** is an important part of SSDs which allows for easy rewriting and deleting of data. What a GC does is that it takes all of the pages that are marked by the TRIM command and stores them all into one block.

The GC moves the pages that are marked as unused by the **TRIM** command into another block and replaces all of the used data into another block. In general, all the pages that are unused are collected into one block, and the used data is moved to another block.

The block that contains all of the unused data is then nuked and a new block is generated. This is how SSDs easily remove unused data

#### Wear Leveling

**Wear Leveling** is a process that is designed to extend the life of SSDs. It ensures all memory blocks experience a similar number of write/erase cycles. If only the beginning few cells are being used to store all of the information, those few cells will be read from, written to and erased the most number of times.

Over time, these few cells will wear out very quickly, while the other cells are left untouched. This is not an ideal scenario because it doesn't utilize the entire SSD.

Wear Leveling uses an algorithm in order to track the number of writes to each block and make decisions on where to store the new data. This is accomplished using one of three processes: **dynamic**, **static** and **global** wear leveling

- **Dynamic Wear Leveling:** It selects the block with the lowest erasure count for the next write.
- **Static Wear Leveling:** Blocks of static data are moved when their erasure count falls below a threshold. This additional step of moving data *can* slow write cycle performance, but this is more effective than dynamic wear leveling for extending the life span of SSDs
- **Global Wear Leveling:** It divides the entire storage into multiple zones, ensuring write activity is distributed across the entire device. If one zone has more write cycles, the controller intervenes and redirects data to a different zone

## Volumes and Partitions

When data is stored on a storage device like an HDD or SSD, it is organized in a specific way to make it easier to manage. This organization is achieved with the help of **partitions** and **volumes**. These structures help the OS manage how data is stored, retrieved and accessed
