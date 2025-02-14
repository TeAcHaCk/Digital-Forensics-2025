# File Carving

File Carving is a process used in Forensics to extract data from a disk drive without the assistance of the file system that originally made the file

File Carving is mostly used to recover files from the unallocated space in a drive. In case of damaged drives or missing file systems, this means that the entire disk is unallocated and files can be hidden here.

Many of the file systems do not remove the data when it's deleted, but instead just remove the reference to the data. File Carving is the process of reconstructing the files by scanning the raw bytes of the disk and reassembling them. This is done by viewing the header and the footer of the file and reconstructing the file.

## Tools

For this activity, we'll be using a tool that will help us in File Carving. Windows users can install the tool [Recuva](https://www.ccleaner.com/recuva/download) or [PhotoRec](https://photorec.en.softonic.com/)

Linux users and M1 users can install the tool TestDisk. Choose your operating system from the given options and you can get to work

## Get Started

To learn how to use Recuva, click [here](./Recuva_Tool_Guide.pdf)
To learn how to use PhotoRec, click [here](./PhotoRec_Tool_Guide.pdf)
To get started with TestDisk, click [here](./TestDisk.md)
