Param(
      [Parameter(ParameterSetName='Default Parameters',
       Mandatory=$true,
       Position=0)]
       [string]$Url,
      
      [Parameter(ParameterSetName='Default Parameters',
       Mandatory=$true,
       Position=1)]
       [string]$Path,

       [Parameter(ParameterSetName='Default Parameters',
       Mandatory=$false)]
       [Switch]$NoCheckCertificate
)

if ($NoCheckCertificate.IsPresent)
{
    [Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}
}

$Path = $Path.Replace("/", "\");
$tmp = $env:TMP
$Path = $Path.Replace("\tmp", $tmp);

if ([string]::IsNullOrWhiteSpace([System.IO.Path]::GetFileName($Path)) -or (Test-Path $Path -PathType Container))
{
    $Path = [System.IO.Path]::Combine($Path, [System.IO.Path]::GetFileName($Url));
}

Write-Host "Attempting to download`r`n    from: '${Url}'`r`n      to: '${Path}'";
(New-Object System.Net.WebClient).DownloadFile($Url, $Path);
