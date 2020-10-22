param(
    [Parameter(Mandatory)]$name,
    [int]$start=0,
    [int]$end=10,
    $mode='create'
)

if($mode -eq "create")
{
    For ($index = $start; $index -lt $($end + 1); $index++)
    {
        if(-Not $(Test-Path ".\$name$($index)"))
        {
            New-Item -Path ".\" -Name "$name$($index)" -ItemType "directory"
        }
    }
}
else
{
    For ($index = $start; $index -lt $($end + 1); $index++)
    {
        if($(Test-Path ".\$name$($index)"))
        {
            Remove-Item ".\$name$($index)"
        }
    } 
}