Function Get-BobResponse() {
    <#
    .SYNOPSIS
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.
    
    .DESCRIPTION
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.

    Bob answers 'Sure.' if you ask him a question.

    He answers 'Whoa, chill out!' if you yell at him.

    He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

    He says 'Fine. Be that way!' if you address him without actually saying
    anything.

    He answers 'Whatever.' to anything else.
    
    .PARAMETER HeyBob
    The sentence you say to Bob.
    
    .EXAMPLE
    Get-BobResponse -HeyBob "Hi Bob"
    #>
    [CmdletBinding()]
    Param(
        [string]$HeyBob
    )
    if ($HeyBob -ne $null) {
        $stripped = $HeyBob.Trim()
        $isUpperString = ($stripped -cmatch '[A-Z]') -and -not ($stripped -cmatch '[a-z]')
        $isQuestion = $stripped -match "[?]$"
        $isNumbers = $stripped -match '^\d+$'
    }

    if ($isUpperString -and ($isQuestion) -and -not ($isNumbers)) {
        return "Calm down, I know what I'm doing!"
    }
    elseif ($isUpperString -and -not ($isNumbers) -and -not $isQuestion) {
        return "Whoa, chill out!"
    }
    elseif ($isQuestion) {
        return "Sure."
    }
    elseif ([string]::IsNullOrWhiteSpace($HeyBob) -or $HeyBob -eq "" -or ($HeyBob -eq '^[`t`n`r]*$')) {
        return "Fine. Be that way!"
    }
    else {
        return "Whatever."
    }
}