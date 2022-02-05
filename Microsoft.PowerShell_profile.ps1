
#rice

#Clear-Host
Set-PSReadlineOption -Colors @{
    Type = "DarkCyan"
    Member = "Gray"
    String = "DarkGray"
    Number = "Yellow"
    Comment = "DarkGreen"
    Command = "Cyan"
    Keyword = "Cyan"
    Operator = "Gray"
    Variable = "Magenta"
    Parameter = "Gray"
}
#aliases
Set-Alias -Name ydl -Value yt-dlp.exe

#custom functions
function whereis {
  Get-Command -CommandType Application -ErrorAction SilentlyContinue -Name $args[0] | Select-Object -ExpandProperty Definition
}