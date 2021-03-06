﻿function New-HTMLCustomJS {
    [CmdletBinding()]
    param(
        [System.Collections.IDictionary] $JS
    )
    foreach ($Key in $JS.Keys) {
        "<!-- JS $Key AUTOGENERATED on DEMAND START -->"
        if ($JS[$Key]) {
            New-HTMLTag -Tag 'script' {
                $JS[$Key]
            } -NewLine
        }
        "<!-- JS $Key AUTOGENERATED on DEMAND END -->"
    }
}