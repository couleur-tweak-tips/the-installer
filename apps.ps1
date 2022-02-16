$script:apps = @{

    'Tweaking, hardware, monitoring & benchmarking' = @{

        CapFrameX = 'extras/CapFrameX'
        Autoruns = 'extras/Autoruns'
        DisplayDriverUninstaller = 'extras/ddu'
        NSudo = 'extras/nsudo'
        NVCleanstall = 'extras/nvcleanstall'
        'CPU-Z' = 'extras/cpu-z'
        'GPU-Z' = 'extras/gpu-z'
        Prime95 = 'extras/prime95'
        'MSI Kombustor' = 'extras/msikombustor'
        'ProcessHacker2' = 'extras/processhacker'
        'Ryzen controller (For AMD Ryzen laptops)' = 'extras/ryzen-controller'
        'Rivatuner Statistics Server (RTSS)' = 'extras/rtss'
        ThrottleStop = 'extras/throttlestop'
        'Winaero Tweaker' = 'extras/winaero-tweaker'
        HWInfo = 'extras/hwinfo'
        'NVIDIA Profile Inspector (NPI)' = 'extras/nvidia-profile-inspector'
        DevManView = 'nirsoft/devmanview'
        NetworkLatencyView = 'nirsoft/networklatencyview'
        ServiWin = 'nirsoft/serviwin'
        'Dism++' = 'extras/dismplusplus'
        sysinternals = 'extras/sysinternals'
        'Snappy Driver Installer Origin' = 'extras/snappy-driver-installer-origin'
    }

    'Game Launchers' = @{

        Steam = 'versions/steam'
        Uplay = 'versions/uplay'
        'Ubisoft Connect' = 'versions/ubisoftconnect'
        'Heroic (Epic Games replacement)' = 'extras/heroic-games-launcher'
    }

    'Disk Stuff' = @{

        'Balena Etcher' = 'extras/etcher'
        UNetbootin = 'extras/UNetbootin'
        Rufus = 'extras/Rufus'
        Ventoy = 'extras/Ventoy'
        Bleachbit = 'extras/BleachBit'
        CrystalDiskInfo = 'extras/CrystalDiskInfo'
        CrystalDiskMark = 'extras/CrystalDiskMark'
    }

    Screenshotting = @{

        ShareX = 'extras/ShareX'
        Lightshot = 'extras/Lightshot'
        Greenshot = 'extras/Greenshot'
    }

    'Image editors/viewers' = @{

        'Paint.NET' = 'extras/paint.net'
        Gimp = 'extras/Gimp'
        Krita = 'extras/Krita'
        Cupscale = 'extras/cupscale'
        Irfanview = 'extras/irfanview'
        JPEGView = 'extras/jpegview'
    }

    'Media (video/audio)' = @{

        #'AIO-Video' = 'utils/AIO-Video'
        Smoothie = 'utils/smoothie'
        DiscordCompressor = 'utils/DiscordCompressor'
        'OBS Studio' = 'extras/OBS-Studio'
        LosslessCut = 'extras/LosslessCut'
        Nmkoder = 'utils/nmkoder'
        'MPV.net (user friendly mpv)' = 'extras/MPV.net'
        MPV = 'extras/mpv'
        VLC = 'extras/VLC'
        FFmpeg = 'main/ffmpeg'
        Audacity = 'extras/audacity'
        Danser = 'main/danser-go'
        blur = 'utils/blur'
        'MPC-HC' = 'extras/mpc-hc'
        Staxrip = 'extras/staxrip'
        Handbrake = 'extras/handbrake'
        'Handbrake-CLI' = 'main/handbrake-cli'
        gifski = 'main/gifksi'
        gifsicle = 'main/gifsicle'
        Shotcut = 'extras/shotcut'
        Openshot = 'extras/openshot'
        Blender = 'extras/blender'
        VMAF = 'main/vmaf'
        mkvtoolnix = 'extras/mkvtoolnix'
        # OptiPNG = 'main/optipng'
    }

    Minecraft = @{

        Minecraft = 'games/minecraft'
        MultiMC = 'games/multimc'
        'Temurin 17 JDK (adds itself to path as temurin17-javaw.exe)' = 'utils/temurin17-jdk'
        Moony = 'utils/moony'
    }

    Social = @{

        TeamSpeak3 = 'extras/teamspeak3'
        Ferdi = 'extras/ferdi'
        Discord = 'extras/discord'
        Telegram = 'extras/Telegram'
        'Discord Canary' = 'versions/discord-canary'
        Ripcord = 'extras/ripcord'
        Lightcord = 'extras/lightcord'
        #Powercord = 'utils/powercord'
        WhatsApp = 'extras/WhatsApp'
        Skype = 'extras/skype'
        Slack = 'extras/slack'
        Signal = 'extras/Signal'
        Joplin = 'extras/joplin'
        Zoom = 'extras/zoom'
    }

    'Developping / Programming languages' = @{

        'Windows Terminal' = 'extras/windows-terminal'
        'Notepad++' = 'extras/notepadplusplus'
        'Sublime Text' = 'extras/sublime-text'
        'VS Code' = 'extras/vscode'
        'VS Codium' = 'extras/vscodium'
        'Atom' = 'extras/atom'
        'SciTe4AHK' = 'extras/scite'
        Git = 'main/git'
        'GitHub Desktop' = 'extras/github'
        AutoHotkey = 'extras/autohotkey'
        ElasticSearch = 'extras/ElasticSearch'
        'Git LFS' = 'main/git-lfs'
        Ruby = 'main/ruby'
        NodeJS = 'main/NodeJS'
        'NodeJS LTS' = 'main/NodeJS-LTS'
        Python = 'main/python'
        'pwsh (PowerShell 7)' = 'main/pwsh'
        Golang = 'main/go'
        'V-lang' = 'main/v'
        Rust = 'main/rust'
        Kotlin = 'main/kotlin'
        Lua = 'main/lua'
        'lua-for-windows' = 'main/lua-for-windows'
        MongoDB = 'extras/mongodb'
    
    }

    'CLI Tools' = @{

        'Legendary (EGS CLI)' = 'games/legendary'
        'yt-dlp' = 'main/yt-dlp'
        'GitHub CLI (gh)' = 'main/gh'
        'everything-cli' = 'main/everything-cli'
        'Heroku CLI' = 'heroku-cli'
        'Signal CLI' = 'main/signal-cli'
        'SpeedTest(.net) CLI' = 'main/speedtest-cli'
        OpenSSH = 'main/openssh'
        'OpenSSL' = 'main/openssl'
        curl = 'main/curl'
        axel = 'main/axel'
        wget = 'main/wget'
        gcc = 'main/gcc'
        Gitea = 'main/gitea'
        grep = 'main/grep'
        tar = 'main/tar'
        x264 = 'main/x264'
        x265 = 'main/x265'
    }

    'Aesthetics / quality of life' = @{

        'Vibrance GUI' = 'extras/vibrance-gui'
        PrivateZilla = 'extras/privatezilla'
        ThisIsWin11 = 'extras/ThisIsWin11'
        PowerToys = 'extras/powertoys'
        EarTrumpet = 'extras/eartrumpet'
        'ModernFlyouts' = 'extras/modernflyouts'
        #Lively = 'utils/lively'
        TaskbarX = 'extras/TaskbarX'
        TranslucentTB = 'extras/TranslucentTB'
        #RoundedTB = 'utils/RoundedTB'
  
    }

    'Web browers / E-mail' = @{

        Firefox = 'extras/firefox'
        'Firefox Nightly' = 'versions/firefox-nightly'
        Librewolf = 'extras/librewolf'
        Waterfox = 'extras/waterfox'
        Brave = 'extras/brave'
        'Google Chrome' = 'extras/googlechrome'
        'Ungoogled Chromium' = 'extras/ungoogled-chromium'
        Vivaldi = 'extras/vivaldi'
        Opera = 'extras/opera'
        OperaGX = 'extras/opera-gx'
        Thunderbird = 'extras/thunderbird-portable'
        'Tor browser' = 'extras/tor-brower'
    
        #Icecat = 'utils/icecat'
        #'Midori browser' = 'utils/midori-browser'
    }

    'Must haves' = @{

       ' Everything 1.5ab (I rly recommend)' = 'extras/everything-alpha'
        Everything = 'extras/everything'
        '7-Zip' = 'main/7zip'
        Syncthing = 'main/syncthing'
    }

    Peripherals = @{

        OpenRGB = 'extras/openrgb'
        'Logitech Gaming Software (non portable)' = 'nonportable/logitech-gaming-software-np'
        #'Logitech Onboard Memory Manager' = 'utils/LogitechOMM'
        #'Glorious Software' = 'utils/glorious-software'
        #'LG Hub' = 'utils/lghub'
        #'Razer Synapse 2' = 'utils/razer-synapse-2'
        #'Razer Synapse 3' = 'utils/razer-synapse-3'
        #'Roccat Swarm' = 'utils/roccat-swarm'
    }

    Writting = @{

        Obsidian = 'extras/obsidian'
        Notion = 'extras/notion'
        Zettlr = 'extras/zettlr'
        OpenOffice = 'extras/OpenOffice'
        emacs = 'extras/emacs'
        'OnlyOffice Desktop Editors' = 'extras/onlyoffice-desktopeditors'
        'LibreOffice (Stable)' = 'extras/libre-office-stable'
        'LaTeX (MikTeX)' = 'main/latex'
        nano = 'main/nano'
        vim = 'main/vim'
        neovim = 'main/neovim'
        #'WPS Office Free' = 'utils/wps-office-free'
    }
    
    Miscellaneous = @{

        Compactor = 'extras/compactor'
        'TeraCopy (non portable)' = 'nonportable/teracopy-np'
        WinDirStat = 'extras/windirstat'
        WizTree = 'extras/wiztree'
        'Scoop Completion' = 'extras/scoop-completion'
        Filezilla = 'extras/filezilla'
        DeepL = 'extras/DeepL'
        Onionshare = 'extras/onionshare'
        Chatterino = 'extras/chatterino'
        Bitwarden = 'extras/bitwarden'
        KeepassXC = 'extras/keepassxc'
        Keypirinha = 'extras/keypirinha'
        Anydesk = 'extras/anydesk'
        TeamViewer = 'extras/teamviewer'
        Parsec = 'extras/parsec'
        'WinRAR' = 'extras/winrar'
        'Visual C++ redistributables' = 'utils/vcredist-aio'
        '.NET SDK' = 'main/dotnet-sdk'
        'DirectX Web' = 'utils/directx-web'
        #'Cloudflare WARP' = 'utils/cloudflare-warp'
        #'Sandboxie Plus' = 'utils/sandboxie-plus'
        OpenVPN = 'extras/OpenVPN'
        Virtualbox = 'extras/portable-virtualbox'
        'Free Download Manager' = 'extras/freedownloadmanager'
        QBitTorrent = 'extras/qbittorrent '
        lessmsi = 'main/lessmsi'
    }
}