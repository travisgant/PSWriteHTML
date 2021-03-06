﻿function New-TableJavaScript {
    [cmdletBinding()]
    param(
        [string[]] $HeaderNames,
        [System.Collections.IDictionary] $Options
    )
    $Options['data'] = "markerForDataReplacement"
    [Array] $Options['columns'] = foreach ($Property in $HeaderNames) {
        @{ data = $Property }
    }
    $Options['deferRender'] = $true
}