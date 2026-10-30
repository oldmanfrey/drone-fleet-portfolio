# update_battery_ids.ps1
param (
    [Parameter(Mandatory=$true)]
    [string]$OldID,

    [Parameter(Mandatory=$true)]
    [string]$NewID
)

echo "Searching for Battery ID: $OldID and swapping it with: $NewID across the fleet..."

# Target all text and markdown config configurations inside the units folder structure
$files = Get-ChildItem -Path "units" -Recurse -Include *.md, *.txt

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    if ($content -match [regex]::Escape($OldID)) {
        $content = $content -replace [regex]::Escape($OldID), $NewID
        Set-Content -Path $file.FullName -Value $content -Encoding utf8
        echo "✅ Successfully updated file: $($file.FullName)"
    }
}

echo "Fleet battery registration sweep complete."
