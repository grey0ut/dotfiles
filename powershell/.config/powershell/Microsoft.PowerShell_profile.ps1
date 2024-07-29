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
$psstyle.fileinfo.Directory = "`e[1m"
