$cols = @()
Write-Host "Criação da tabela"
for ($i=1;;$i++) {
    $c = Read-Host "Campo $i"
    if ([string]::IsNullOrWhiteSpace($c)) { break }
    $cols += $c
}
$rows = @()
Write-Host "Favor informar os dados:"
$done = $false
for ($l=1;;$l++) {
    $row = @{}
    foreach ($c in $cols) {
        $val = Read-Host "$l,$c"
        if ($c -eq $cols[0] -and [string]::IsNullOrWhiteSpace($val)) { $done = $true; break }
        $row[$c] = $val
    }
    if ($done) { break }
    $rows += [pscustomobject]$row
}
$LARG_TELA = (Get-Host).UI.RawUI.WindowSize.Width
$tam_campo = [math]::Floor($LARG_TELA / $cols.Count)
Clear-Host
foreach ($c in $cols) { Write-Host ($c.PadRight($tam_campo)) -NoNewline }
Write-Host
Write-Host ("-" * $LARG_TELA)
foreach ($row in $rows) {
    foreach ($c in $cols) { Write-Host (($row.$c) -as [string]).PadRight($tam_campo) -NoNewline }
    Write-Host
}

