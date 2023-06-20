$filePath = "C:\{Enter folder path here}\{filename}.fna"
$filePath2 = "C:\{Enter folder path here}\{new filename}.fna"

# Read the content of the file
$fileContent = Get-Content -Path $filePath

# Regex Pattern
$pattern = "([A-Za-z0-9]+(_[A-Za-z0-9]+)+)"

# Loop through each line and replace matching lines with a modified line
$modifiedContent = foreach ($line in $fileContent) {
    if ($line -match '>') {
        $matchedSubstring = $($line -match $pattern | Out-Null; $Matches[1])
        if ($matchedSubstring) {
            $line = ">" + $matchedSubstring
        } else {
            Write-Output "No match found."
        }
    }
    $line
}

# Save the modified content to a new file
$modifiedContent | Set-Content -Path $filePath2
