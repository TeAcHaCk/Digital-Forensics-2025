- **What is hash of the image?**
![Hash.png](./Hash.png)
`Using certutil to get the hashes`
![Hash2.png](./Hash2.png)
`Getting it in the Metadata of Autopsy`

- **What is the Operating System installed?**
![OS.png](./OS.png)
![OS2.png](./OS2.png)
`Windows Vista Ultimate`

- **When was the Install Date?**
![Install.png](./Install.png)
We see that the create date for the `SOFTWARE` date is on `2006-11-02` indicating that the Windows machine was most probably installed or first initialized on this date

- **What is the timezone Settings?**
![Timezone1.png](./Timezone1.png)
![Timezone2.png](./Timezone2.png)
`Mountain Standard Time`

- **Who is the Registered User?**
![RegUser.png](./RegUser.png)
On going to the `SOFTWARE` hive again, and scrolling through the keys, we see a key called as `RegisteredOwner` and the value for this is `Wes Mantooth`

- **What is the Computer Account Name?**
![ComputerAccountName.png](./ComputerAccountName.png)
Computer Account Name is also known as the `ComputerName`. On searching for this Computer Name, we see that the name of the Computer is `WESMANTOOTH-PC`

- **What is the Primary Domain Name?**
![DomainName.png](./DomainName.png)

- **When was the last recorded Shutdown date/time?**

?????????????????

- **How many Accounts are recorded?**
![AccountNumber.png](./AccountNumber.png)
`Wes Mantooth`, `Dracula`, `Guest`, `Administrator`, `Laurent`

- **Account name that uses the machine the most?**
![MostUsed.png](./MostUsed.png)
`Wes Mantooth` logged in 96 times

- **Last user to Logon?**
![LastUserLogon.png](./LastUserLogon.png)
![LastUserLogon2.png](./LastUserLogon2.png)
![LastUserLogon3.png](./LastUserLogon3.png)

Here we see that `Wes Mantooth` has the most recent login. `Guest` and `Laurent` haven't been logged in at all, so no point in comparing them

- **A search for the name of “Wes Mantooth” reveals multiple hits. One of these proves that Wes Mantooth is the administrator of this computer. What file is it?**

![Admin.png](./Admin.png)

Access to all of these Registry Keys indicate that `Wes Mantooth` is the Administrator of the computer

- **List the Network Cards used by this computer**
![NetworkCards.png](./NetworkCards.png)
![NetworkCards2.png](./NetworkCards2.png)
These are the Two Network Cards used by this machine

- **Find tools that may be used for Digital Forensics/Hacking**
![Hackerman.png](./Hackerman.png)
In this entire list of applications, we see some files like `FileZilla`, `TrueCrypt`, `BestCrypt`. All these programs are potentially dangerous and can be used for malicious purposes

- **Which email client is used by Wes Mantooth?**
![Outlook.png](./Outlook.png)
Outlook

- **How many executable files are in the Recycle Bin?**
![RecycleBin.png](./RecycleBin.png)
2 executables are in the Recycle Bin, namely `CameraShy.exe` and `FileZill_2_2_32_setup.exe`

- **How many files are actually reported to be deleted by the system?**
![DeletedFiles.png](./DeletedFiles.png)
`276` files in total are deleted

- **Are there any viruses on the laptop?**
![Virus.png](./Virus.png)
Not really, dude just has a lot of Outlook Attachments(.eml files). There are two files with encryption on them, so we can't really judge

- **Is there encryption Software?**
![EncryptionSoftware.png](./EncryptionSoftware.png)

TrueCrypt and BestCrypt are Encryption softwares

- **What was the most visited domain and how many times was it visited?**
![MostVisitedDomain.png](./MostVisitedDomain.png)
`google.com` was visited 149 times
