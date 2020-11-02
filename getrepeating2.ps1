function get-firstrepeatcharacter {
   [CmdletBinding()]
   param (
     [string]$teststring
   )

  $a = [ordered]@{}

  $i = 0  

  $CharArray = $teststring.ToCharArray()

    foreach ($item in $CharArray) {
        if ($a[$item]) {
            break
        } else {
            $a.Add($item, $item)
            $i++
        }
    }
    return $CharArray[$i]

}

$ts = 'abcdedcba'

get-firstrepeatcharacter -teststring $ts