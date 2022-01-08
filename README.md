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
Invoke-RestMethod https://installer.ctt.cx | Invoke-Expression # Parses then executes the script
```

## **A brief introduction to Scoop**
Scoop is a package manager for Windows like Chocolatey, or like Ubuntu's apt-get