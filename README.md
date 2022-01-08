# ![](https://i.imgur.com/mebRfpP.png) **The Installer** - like [Ninite](https://ninite.com) but on crack
* Tired of installing each of your programs each time you reinstall Windows?
* Do you want to separate your OS from your program data  so you can easily reinstall/break your Windows without wasting time? (separate portable partition)
* Are you tired of programs being dispersed between AppData Roaming & Local, Program Files, Program Files (x86) and ProgramData ?
* Do you want to install (most) of the programs you need in the snap of a finger?

The Installer is a user friendly frontend of [scoop](https://get.scoop.sh), a package manager that fits in a single folder (per default in ``%userprofile%\scoop``)

## **How to run**

Open PowerShell and paste in the following codeblock:
```powershell
[System.Net.ServicePointManager]::SecurityProtocol = 'Tls12' # Forces TLS 1.2
Set-ExecutionPolicy Bypass -Scope Process -Force # Allows script to run
Invoke-RestMethod https://git.io/J9GI7 | Invoke-Expression # Parses then executes the script
```

# **A brief introduction to Scoop**
Scoop is a package manager for Windows like [Chocolatey](https://chocolatey.org), or like Ubuntu's [apt-get](https://help.ubuntu.com/community/AptGet/Howto), each program is stored in a [bucket](https://github.com/ScoopInstaller/Main) as a [manifest]("D:\Scoop\buckets\extras\scripts\discord\disable-auto-update.ps1" "example manifest for Discord"). It is community ran and everyone can make their [own scoop bucket](https://github.com/couleur-tweak-tips/utils/tree/main/bucket).

When you open the folder where scoop is installed, you'll find the following folders:

* **apps**: where the actual program data is kept
* **buckets**: where the buckets (which are github repositories) are storred
* **cache**: where the installer files get downloaded
* **persist**: where user data for apps is kept, but persists when updating them (uses symbolic links)
* **shims**: this is folder is added to path and contains shortcuts to execute all programs who need their CLI tools added to path

### **Adopt, then continue using**
Once you've understood how scoop works, you never go back installing programs like before. Scoop's community consistantly maintains and adds new manifests. If you take the time to understand how app manifests work, you too can make your own manifests/bucket / contribute to other buckets

### **Security**
If you're worrying about people installing programs for you, you can easily check what website you're downloading from (which are confirmed with a SHA256 checksum) by checking ``scoop\buckets\acoolbucket\cuteprogram.json``

### **Perfect for small programs (e.g CLI)**
This is what scoop was originally made for, you can simply give it a zip to extract, a binary to shim and a folder to persist for it to be a totally functional program which that can receive updates.

## You can learn more about Scoop [here](https://github.com/ScoopInstaller/Scoop/wiki)