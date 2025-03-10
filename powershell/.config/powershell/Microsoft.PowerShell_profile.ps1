<#function prompt {
	$PromptString = "PS" + ' #' + '>'
	Write-Host $PromptString -NoNewLine -ForegroundColor Yellow
	return " "
}
#>
Invoke-Expression (&starship init powershell)
Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
Remove-PSReadLineKeyHandler -Chord Ctrl+a
Set-PSReadLineKeyHandler -Chord Ctrl+a -Function SelectAll
$Colors = @{
    Operator = "White"
    Parameter = "Green"
}
Set-PSReadlineOption -Colors $Colors
$psstyle.fileinfo.Directory = "`e[1m"
