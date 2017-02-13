
param(
    [Parameter(Mandatory = $True,
        Position = 0)]
        [ValidateNotNullOrEmpty()]
        [scriptblock]$function
)

Describe 'PUGS golf, abaqus' { 
    it 'tests single figure int, 5' {
        $int = 5
        $result = $function | iex
        $result | Should be '-----*****'
    }

    it 'tests multifigure int, 97042' {
        $int = 97042
        $result = $function | iex
        $result[0] | Should be '-*********'
        $result[1] | Should be '---*******'
        $result[2] | Should be '----------'
        $result[3] | Should be '------****'
        $result[4] | Should be '--------**'
        $result.length | Should be 5
    }

        it 'tests multifigure int, [int]::MaxValue' {
        $int = [int]::MaxValue
        $result = $function | iex
        $result[0] | Should be '--------**'
        $result[1] | Should be '---------*'
        $result[2] | Should be '------****'
        $result[3] | Should be '---*******'
        $result[4] | Should be '------****'
        $result[5] | Should be '--********'
        $result[6] | Should be '-------***'
        $result[7] | Should be '----******'
        $result[8] | Should be '------****'
        $result[9] | Should be '---*******'
        $result.length | Should be 10
    }
}