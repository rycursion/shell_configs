
#rice
#Set-PSReadlineOption -Colors @{
#    Type = "DarkCyan"
#    Member = "Gray"
#    String = "DarkGray"
#    Number = "Yellow"
#    Comment = "DarkGreen"
#   Command = "Cyan"
#    Keyword = "Cyan"
#    Operator = "Gray"
#    Variable = "Magenta"
#   Parameter = "Gray"
#}

#aliases
Set-Alias -Name ydl -Value yt-dlp.exe
Set-Alias -Name ls -Value lsd.exe -Option AllScope
Set-Alias -Name wget -Value wget.exe -Option AllScope
Set-Alias -Name subl -Value subl.exe -Option AllScope
#custom functions
function whereis {
  Get-Command -CommandType Application -ErrorAction SilentlyContinue -Name $args[0] | Select-Object -ExpandProperty Definition
}
function aria2c {
  aria2c.exe --conf-path=C:\Users\yroy9\AppData\Roaming\aria2\aria2.conf $args
}
function la {
  lsd.exe -a
}
function ll {
  lsd.exe -l
}