[System.Net.ServicePointManager]::SecurityProtocol = 'Tls12'
    # Forces TLS 1.2

Invoke-RestMethod https://raw.githubusercontent.com/couleurm/Write-Menu/master/Write-Menu.ps1 | Invoke-Expression
    # Imports the Write-Menu module

<# -------------------------------------- Scoop check / install -------------------------------------- #>

if (-Not(Get-Command scoop.cmd -Ea Ignore) -or (-Not($env:SCOOP))){

    $Drives = Get-Volume | Where-Object {$PSItem.DriveLetter -notin '',$null} | ForEach-Object {"$($PSItem.DriveLetter):\ - $([Math]::Round($PSItem.SizeRemaining/1GB))GB Free"}
    $Message = 'Scoop is not installed, on what drive would you like to install it?'
    
    $Selected = Write-Menu -Entries $Drives -Title $Message
    $SelectedDrive = ($Selected[0..1] -join '')

    if ($SelectedDrive -ne $env:HOMEDRIVE) {

        $env:SCOOP =  Join-Path $SelectedDrive Scoop

        if (Test-Path $env:SCOOP){
            Write-Host "FATAL: A folder called scoop already exists at $env:SCOOP" -ForegroundColor Red -BackgroundColor Black
            Pause
            exit
        }

        [Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
    
    }

    Set-ExecutionPolicy Bypass -Scope Process -Force

    Invoke-RestMethod https://get.scoop.sh | Invoke-Expression
}

<# -------------------------------------- Prompting user with choices -------------------------------------- #>

if ($args -in '',$null,'-verbose'){

    $script:ToInstall = @()

    if ($PSScriptRoot){Invoke-Expression (Get-Content 'D:\GitHub\the-installer\apps.ps1' -Raw)} # If ran locally (as .ps1 script), you can use your own ""bucket""
    else{Invoke-Expression (Invoke-RestMethod https://raw.githubusercontent.com/couleur-tweak-tips/the-installer/main/apps.ps1)}
    
    Start-Sleep 1 # If an error occurs, leave some time to pause
    Clear-Host


        # This is gonna parses and format apps.ps1, which holds a hash table (think of it as json), then prompt the user
    ForEach ($Section in $apps.Keys){

        $Applications = ForEach($app in $apps.$Section){$app.Keys}
        
        $SelectedApps = Write-Menu -Title $Section -Entries $Applications -MultiSelect
                                        # If section name contains a _ replace it by a space (prettier)

        ForEach($SelectedApp in $SelectedApps){$ToInstall = $ToInstall + $apps.$Section.$SelectedApp}
    }

}else{

    switch ($args){
        (($PSItem -is [string]) -and $PSItem -like "http*://*"){[array]$script:ToInstall = (Invoke-RestMethod $args) -Split ([SystemEnvironment]::NewLine)}
        ($PSItem -is [array]){[array]$script:ToInstall = $args}
    }

}

<# -------------------------------------- Adding buckets if not already done + essentials -------------------------------------- #>

$essentials = @{
    'aria2c' = ('main/aria2','accelerates downloads')
    'git' = ('main/git','makes updating buckets faster')
    '7z' = ('main/7zip','makes unzipping faster')
}

ForEach($app in ($essentials.keys)){

    $bin = $app
    $manifestname = $essentials.$app[0]
    $description = $essentials.$app[1]
        # Give some context to the variables used

    if (-Not(Get-Command $bin -ErrorAction Ignore)){

        if ($ToInstall.Contains($manifestname)){

            $ToInstall = $ToInstall | Where-Object {$PSItem -ne $manifestname} # Removes them from the install list if they're in here (aka will be installed anyways)
        }
        
        Write-Warning "Installing $manifestname ($description)"
        scoop.cmd install $manifestname
}
}

$Buckets = Join-Path (Get-Item (Get-Command scoop.cmd).Source).Directory.Parent.FullName buckets

ForEach ($knownbucket in [array](scoop.cmd bucket known)){
    if (($ToInstall -like "$knownbucket/*") -and (-Not(Test-Path (Join-Path $Buckets $knownbucket))) ){scoop.cmd bucket add $knownbucket}
    if (($ToInstall -like "utils/*") -and (-Not(Test-Path (Join-Path $Buckets utils))) ){scoop.cmd bucket add utils 'https://github.com/couleur-tweak-tips/utils'}
}

<# -------------------------------------- Installing the manifests --------------------------------------#>

Write-Warning "Updating every scoop bucket.."
scoop.cmd update

$Scripts = $ToInstall -Like "https://*"

if ($Scripts){

    $ToInstall = $ToInstall | Where-Object {$PSItem -NotLike "https://*"}

    ForEach ($Script in $Scripts){
        Write-Warning "Installing script $Script"
        Invoke-RestMethod $Script | Invoke-RestMethod
    }

}

ForEach ($Package in $ToInstall){
    $Count++
    $PackageName = $($Package -split '/' | Select-Object -Last 1)
    $Host.UI.RawUI.WindowTitle = "[$Count/$($ToInstall.Count)] - Installing $PackageName"
    Write-Warning "Installing $PackageName"
    scoop.cmd install $Package
}
<# Leaving this here for debugging (getting myself an array of selected apps quickly)
$ToInstall = @(
'extras/everything'
'main/syncthing'
'extras/everything-alpha'
'extras/TaskbarX'
'extras/BleachBit'
'main/openssh'
'extras/ddu'
'main/NodeJS'
'extras/Krita'
'extras/discord-canary'
'extras/emacs'
'extras/openrgb'
'extras/Lightshot'
'games/Minecraft'
'utils/DiscordCompressor'
'extras/brave'
'main/aria2'
)
#>