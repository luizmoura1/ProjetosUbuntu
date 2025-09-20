$cols = @()
Write-Host "Criação da tabela"
for ($i=1;;$i++) {
    $c = Read-Host "Campo $i"
    if ([string]::IsNullOrWhiteSpace($c)) { break }
    $cols += $c
}
$rows = @()
Write-Host "Favor informar os dados:"
for ($l=1;;$l++) {
    $row = @{}
    foreach ($c in $cols) {
        $val = Read-Host "$l,$c"
        if ($c -eq $cols[0] -and [string]::IsNullOrWhiteSpace($val)) { break 2 }
        $row[$c] = $val
    }
    $rows += [pscustomobject]$row
}
Clear-Host
$rows | Format-Table -AutoSize
#usa array indexado $cols
#cada linha é um hash table (@{}) → convertido em objeto ([pscustomobject])
#a lista final $rows é um array de objetos
#Format-Table já alinha automaticamente, sem cálculo de largura
