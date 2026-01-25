Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

Import-Module posh-git
Import-Module git-aliases -DisableNameChecking
Import-Module z

Invoke-Expression (&starship init powershell)

Set-Alias -Name la -Value Get-ChildItem

function i {
    param (
        [string]$DirectoryName
    )

    Set-Location -Path "$HOME\i\$DirectoryName"
}

fnm completions --shell powershell | Out-String | Invoke-Expression

fnm env --use-on-cd --version-file-strategy=recursive --corepack-enabled --resolve-engines --shell powershell | Out-String | Invoke-Expression

Remove-Item Alias:ni -Force -ErrorAction Ignore

function nio {
    ni --prefer-offline
}

function s {
    nr start
}

function d {
    nr dev
}

function b {
    nr build
}

function bw {
    nr build --watch
}

function t {
    nr test
}

function tu {
    nr test -u
}

function tw {
    nr test --watch
}

function w {
    nr watch
}

function p {
    nr play
}

function c {
    nr typecheck
}

function lint {
    nr lint
}

function lintf {
    nr lint --fix
}

function release {
    nr release
}

function re {
    nr release
}
